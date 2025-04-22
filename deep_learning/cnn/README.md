# Convolutional Neural Networks
[← Back to Main Page](../../README.md) | [← Back to Deep Learning](../README.md)

## Edge Detection


### Vertical Edge Example:
#### Perform convolution with image and filter:
<img src="images/vert_edge_det_1.png" width=500>
<img src="images/vert_edge_det_2.png" width=500>

#### Output will show vertical edges

<img src="images/vert_edge_det_3.png" width=500>

### Edge Detectors:
<img src="images/edge_det.png" width=500>

> Can set these to be parameters for nn to learn

<img src="images/edge_det_param.png" >

<br>
<hr>

### Padding
> Pad original images with border of 0s 
- Allows corners to be in calculations more than once
- Prevents shrinking of original image size

#### Types:
- Valid: No padding - n x n $ * $ f x f $\rightarrow$ n-f+1 x n-f+1
- Same: Padd so output size same as input -  $p = \frac{f-1}{2}$

### Strided Convolution
> How far you move over when performign convolution

#### Stride of 2 ex.

<img src="images/stride_2.png">

<br>

Dimensions: $$ \lfloor\frac{n+2p-f}{s}+1\rfloor \quad \text{x} \quad \lfloor\frac{n+2p-f}{s}+1\rfloor$$