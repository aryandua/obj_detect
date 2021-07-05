import numpy as np
import cv2 as cv
from matplotlib import pyplot as plt
img = cv.imread('file',0)
edges = cv.Canny(img,200,200)
#plt.subplot(121),plt.imshow(img,cmap = 'gray')
#plt.title('Original Image'), plt.xticks([]), plt.yticks([])
#plt.subplot(122),plt.imshow(edges,cmap = 'gray')
cv.imwrite('output.png', edges)
#plt.title('Edge Image'), plt.xticks([]), plt.yticks([])
#plt.show()
