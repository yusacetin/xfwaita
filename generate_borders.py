from PIL import Image

DARK = 0
LIGHT = 1

ACTIVE = 0
INACTIVE = 1

DARK_ACTIVE_BORDER = (22, 22, 22, 255) # dark_slim and dark_large have slightly different title bar borders, this matches the slim variant. might fix in the future
DARK_INACTIVE_BORDER = DARK_ACTIVE_BORDER
DARK_ACTIVE_PADDING = (53, 53, 53, 255) # should actually be 50 but for some reason 53 turns out to be 50
DARK_INACTIVE_PADDING = DARK_ACTIVE_PADDING
DARK_BORDER_WIDTH = 5

LIGHT_ACTIVE_BORDER = (0, 0, 0, 255)
LIGHT_INACTIVE_BORDER = LIGHT_ACTIVE_BORDER
LIGHT_ACTIVE_PADDING = (246, 245, 244, 255)
LIGHT_INACTIVE_PADDING = LIGHT_ACTIVE_PADDING
LIGHT_BORDER_WIDTH = 5

CORNER_SPAN = 16

def main():
    generate_and_save(DARK)
    generate_and_save(LIGHT)

def generate_and_save(variant):
    # Generate
    bottom_active = generate_bottom(variant, ACTIVE)
    bottom_inactive = generate_bottom(variant, INACTIVE)

    bottom_right_active = generate_bottom_right(variant, ACTIVE)
    bottom_right_inactive = generate_bottom_right(variant, INACTIVE)

    bottom_left_active = flip_horizontally(bottom_right_active)
    bottom_left_inactive = flip_horizontally(bottom_right_inactive)

    right_active = generate_right(variant, ACTIVE)
    right_inactive = generate_right(variant, INACTIVE)

    left_active = flip_horizontally(right_active)
    left_inactive = flip_horizontally(right_inactive)

    # Save
    dest = ""
    if (variant == DARK): dest = "common_src/dark/"
    else: dest = "common_src/light/"
    
    save_image(bottom_active, dest+"bottom_active.png")
    save_image(bottom_inactive, dest+"bottom_inactive.png")

    save_image(right_active, dest+"right_active.png")
    save_image(right_inactive, dest+"right_inactive.png")

    save_image(left_active, dest+"left_active.png")
    save_image(left_inactive, dest+"left_inactive.png")

    save_image(bottom_right_active, dest+"bottom_right_active.png")
    save_image(bottom_right_inactive, dest+"bottom_right_inactive.png")

    save_image(bottom_left_active, dest+"bottom_left_active.png")
    save_image(bottom_left_inactive, dest+"bottom_left_inactive.png")

def save_image(pixels, filename):
    rows = len(pixels)
    cols = len(pixels[0])
    image = Image.new("RGBA", (cols, rows))
    image_pixels = image.load()
    for row in range(rows):
        for col in range(cols):
            image_pixels[col, row] = pixels[row][col]
    image.save(filename, "PNG")

def generate_bottom(variant, mode):
    width = DARK_BORDER_WIDTH if (variant == DARK) else LIGHT_BORDER_WIDTH
    pixels = []
    if (variant == DARK):
        if (mode == ACTIVE):
            pixels = [[DARK_ACTIVE_PADDING] for row in range(width-1)]
            pixels.append([DARK_ACTIVE_BORDER])
        else: # inactive
            pixels = [[DARK_INACTIVE_PADDING] for row in range(width-1)]
            pixels.append([DARK_INACTIVE_BORDER])
    else: # light
        if (mode == ACTIVE):
            pixels = [[LIGHT_ACTIVE_PADDING] for row in range(width-1)]
            pixels.append([LIGHT_ACTIVE_BORDER])
        else: # inactive
            pixels = [[LIGHT_INACTIVE_PADDING]  for row in range(width-1)]
            pixels.append([LIGHT_INACTIVE_BORDER])
    return pixels

def generate_bottom_right(variant, mode):
    width = DARK_BORDER_WIDTH if (variant == DARK) else LIGHT_BORDER_WIDTH
    
    if (variant == DARK):
        if (mode == ACTIVE):
            border = DARK_ACTIVE_BORDER
            padding = DARK_ACTIVE_PADDING
        else: # inactive
            border = DARK_INACTIVE_BORDER
            padding = DARK_INACTIVE_PADDING
    else: # light
        if (mode == ACTIVE):
            border = LIGHT_ACTIVE_BORDER
            padding = LIGHT_ACTIVE_PADDING
        else: # inactive
            border = LIGHT_INACTIVE_BORDER
            padding = LIGHT_INACTIVE_PADDING

    pixels = [[(0,0,0,0) for col in range(CORNER_SPAN)] for row in range(CORNER_SPAN)]
    for row in range(CORNER_SPAN):
        for col in range(CORNER_SPAN):
            if (col == CORNER_SPAN-1):
                pixels[row][col] = border
            elif (row == (CORNER_SPAN-1)):
                pixels[row][col] = border
            elif (col > (CORNER_SPAN-DARK_BORDER_WIDTH-1)):
                pixels[row][col] = padding
            elif (row > (CORNER_SPAN-DARK_BORDER_WIDTH-1)):
                pixels[row][col] = padding
            else:
                pass # leave at transparent
    return pixels

def generate_right(variant, mode):
    width = DARK_BORDER_WIDTH if (variant == DARK) else LIGHT_BORDER_WIDTH
    pixels = []
    if (variant == DARK):
        if (mode == ACTIVE):
            pixels = [[DARK_ACTIVE_PADDING for row in range(width-1)]]
            pixels[0].append(DARK_ACTIVE_BORDER)
        else: # inactive
            pixels = [[DARK_INACTIVE_PADDING for row in range(width-1)]]
            pixels[0].append(DARK_INACTIVE_BORDER)
    else: # light
        if (mode == ACTIVE):
            pixels = [[LIGHT_ACTIVE_PADDING for row in range(width-1)]]
            pixels[0].append(LIGHT_ACTIVE_BORDER)
        else: # inactive
            pixels = [[LIGHT_INACTIVE_PADDING for row in range(width-1)]]
            pixels[0].append(LIGHT_INACTIVE_BORDER)
    return pixels

def flip_horizontally(original_array):
    rows = len(original_array)
    cols = len(original_array[0])
    pixels = [[(0,0,0,0) for col in range(cols)] for row in range(rows)]
    for row in range(rows):
        for col in range(cols):
            pixels[row][col] = original_array[row][cols - col - 1]
    return pixels

if __name__ == "__main__":
    main()
