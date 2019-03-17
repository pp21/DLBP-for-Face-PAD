# Directional local binary pattern (DLBP) for face presentation attack detection (aka face anti-spoofing or spoofing detection)

## Qin L, Zhang L B, Peng F, et al. Content-Independent Face Presentation Attack Detection with Directional Local Binary Pattern[C]//Chinese Conference on Biometric Recognition (CCBR). Springer, Cham, 2017: 118-126. doi: https://doi.org/10.1007/978-3-319-69923-3_13

## Paper online: https://link.springer.com/chapter/10.1007/978-3-319-69923-3_13

----------------------------------------------------------
---Implementation of the directional local binary pattern (DLBP) in face presentation attack detection (PAD)---
----------------------------------------------------------

Table of Contents
=================

- Introduction
- Usage
- Additional information
- Contact


Introduction
============

This source code provides a simple implementation of DLBP in face PAD.
It is very easy to use and reproduce our work.


Usage
=====

The two core functions of this implementation

a) For the DLBP

Example:

F = dlbp(img, b, config, r, p, mappingtype);	% such as F = dlbp(img, 1, 1, 1, 8, 'u2');
	
This example returns the DLBP of the input image. Other parameters are described in dlbp.m.

b) For the directional difference image

Example:

d_img = getddi(img, b, config);		% such as d_img = getddi(img, 1, 1);	

This example returns the directional difference image of the input image. Other parameters are described in getddi.m.


Additional information
======================

The implementation of directional difference image is licensed to Zhongwei He, Wei Lu, Wei Sun, and Jiwu Huang,
[1] Z. He, W. Lu., W. Sun, J. Huang, 
    "Digital image splicing detection based on Markov features in DCT and DWT domain," 
    Pattern Recognition, 45(12), 4292-4299 (2012)
T. Pevny, P. Bas, J. Fridrich,
[2] T. Pevny, P. Bas, J. Fridrich, 
    "Steganalysis by subtractive pixel adjacency matrix. 
    IEEE Trans. Inf. Forensics Secur., 5(2), 215-224 (2010)
 
The implementation of LBP is licensed to Timo Ojala, Matti Pietikainen, and Topi Maenpaa,
[3] T. Ojala, M. Pietikainen, and T. Maenpaa,
    "Multiresolution gray-scale and rotation invariant texture classification with local binary patterns,"
    IEEE Transactions on Pattern Analysis and Machine Intelligence, vol. 24, no. 7, pp. 971–987, Jul. 2002.

The implementation of DLBP is licensed to Peng Fei, Zhang Le-Bing, Qin Le, and Long Min, 
College of Computer Science and Electronic Engineering, Hunan University, Changsha, China.
College of Computer and Communication Engineering, Changsha University of Science and Technology, Changsha, China.

Contact
============

For any question, please contact Qin Le <qinle@hnu.edu.cn>.

Please kindly cite our paper as follow if you use it.

Please cite as: Qin L, Zhang L B, Peng F, et al. Content-Independent Face Presentation Attack Detection with Directional Local Binary Pattern[C]//Chinese Conference on Biometric Recognition (CCBR). Springer, Cham, 2017: 118-126. doi: https://doi.org/10.1007/978-3-319-69923-3_13
