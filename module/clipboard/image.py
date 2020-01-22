from PIL import ImageGrab   # windows only
import sys

path = sys.argv[1]


im = ImageGrab.grabclipboard()

im.save(path,format='JPEG',quality=70)   # BMP 로 저장
# im.save('test.png','PNG')   # PNG 포맷으로 저장
# im.save('test.jpg','JPEG')

