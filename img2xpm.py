from PIL import Image
import sys
import math
import os

ALPHABET = list("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_?=)(/&%+^!")
XPM_HEADER = """/* XPM */
static char *{NAME}[] = {{
"{WIDTH} {HEIGHT} {NUM} {CHARS}",
"""

def rgb2hex(rgb):
    if rgb[3] < 127:
        return "None"
    r = hex(rgb[0])[2:].upper()
    g = hex(rgb[1])[2:].upper()
    b = hex(rgb[2])[2:].upper()
    if len(r) < 2:
        r = "0"+r
    if len(g) < 2:
        g = "0"+g
    if len(b) < 2:
        b = "0"+b
    return "#{}{}{}".format(r, g, b)

def get_next_color_code(indices):
    color_code = ""
    for index in indices:
        color_code += ALPHABET[index]

    length = len(indices)
    for i in range(length-1, -1, -1):
        if (indices[i] == len(ALPHABET)-1):
            indices[i] = 0
            continue
        else:
            indices[i] += 1
            break

    return color_code

def get_number_of_colors(img):
    colors_list = []
    for y in range(img.height):
        for x in range(img.width):
            color = rgb2hex(img.getpixel((x, y)))
            if not (color in colors_list):
                colors_list.append(color)
    return len(colors_list)

def get_number_of_letters(img):
    number_of_colors = get_number_of_colors(img)
    log_val = math.log(number_of_colors, len(ALPHABET))
    number_of_letters = math.ceil(log_val)
    return number_of_letters

def get_output_filename():
    if (len(sys.argv) > 1):
        return sys.argv[2]
    name = ""
    original_file_extension = os.path.splitext(sys.argv[1])[1]
    if (len(original_file_extension) > 0):
        name = sys.argv[1].replace(original_file_extension, ".xpm")
    else:
        name = sys.argv[1] + ".xpm"
    if "/" in name:
        name = name.rsplit("/", 1)[1]
    return name

def get_xpm_name():
    name = ""
    original_file_extension = os.path.splitext(sys.argv[1])[1]
    if (len(original_file_extension) > 0):
        name = sys.argv[1].replace(original_file_extension, "_xpm").replace("-", "_")
    else:
        name = (sys.argv[1] + "_xpm").replace("-", "_")
    if "/" in name:
        name = name.rsplit("/", 1)[1]
    return name

def main():
    xpm = XPM_HEADER
    img = Image.open(sys.argv[1]).convert("RGBA")
    
    number_of_letters = get_number_of_letters(img)
    indices = [0 for i in range(number_of_letters)]

    colors = {}
    xpm_body = ""
    for y in range(img.height):
        row = ""
        for x in range(img.width):
            color = rgb2hex(img.getpixel((x, y)))
            if not (color in colors.values()):
                code = get_next_color_code(indices)
                colors[code] = color
                xpm += """"{} c {}",\n""".format(code, color)
                row += code
            else:
                code = list(colors.keys())[list(colors.values()).index(color)]
                row += code
        if (y < img.height-1):
            xpm_body += ("\"" + row + "\",\n")
        else:
            xpm_body += ("\"" + row + "\"}};")
    xpm += xpm_body

    xpm_name = get_xpm_name()
    xpm = xpm.format(NAME=xpm_name, WIDTH=img.width, HEIGHT=img.height, NUM=len(list(colors.keys())), CHARS=number_of_letters)

    filename = get_output_filename()
    f = open(filename, "w")
    f.write(xpm)
    f.close()

if __name__ == "__main__":
    main()