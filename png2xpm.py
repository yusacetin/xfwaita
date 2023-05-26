from PIL import Image
import sys

alphabet = list("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_?=)(/&%+^!")
index = 0
xpm = """/* XPM */
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

def get_next_color_code():
    global index
    index += 1
    return alphabet[index - 1]

def main():
    global xpm
    img = Image.open(sys.argv[1]).convert("RGBA")
    colors = {}

    xpm_body = ""
    for y in range(img.height):
        row = ""
        for x in range(img.width):
            color = rgb2hex(img.getpixel((x, y)))
            if not (color in colors.values()):
                code = get_next_color_code()
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

    if (len(colors.keys()) > len(alphabet)):
        print("Cannot perform conversion")
        sys.exit(1)
    
    xpm += xpm_body
    name = sys.argv[1].replace(".png", "_xpm").replace("-", "_")
    if "/" in name:
        name = name.rsplit("/", 1)[1]
    xpm = xpm.format(NAME=name, WIDTH=img.width, HEIGHT=img.height, NUM=len(list(colors.keys())), CHARS="1")
    print(xpm)

main()
