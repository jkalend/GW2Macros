#!python
import pyautogui
import time
from PIL import Image
import sys

im = pyautogui.screenshot()
# im = pyautogui.screenshot(region=(sys.argv[1], int(sys.argv[2]) - 100, int(sys.argv[1]), int(sys.argv[2]) - 200))
# nm = Image.new('RGB', (im.size[0], im.size[1]))


def common():
    for i in range(1920):
        for j in range(1080):
            if im.getpixel((i, j)) == (85, 153, 255):
                return True


def rare():
    for i in range(1920):
        for j in range(1080):
            if im.getpixel((i, j)) == (255, 221, 34):
                return True


def uncommon():
    for i in range(1920):
        for j in range(1080):
            if im.getpixel((i, j)) == (51, 187, 17):
                return True


if common() and uncommon():
    print(4)
elif common() and rare():
    print(5)

if common():
    print(1)
elif uncommon():
    print(2)
elif rare():
    print(3)
else:
    print(0)



