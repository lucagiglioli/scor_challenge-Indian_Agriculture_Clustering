??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
?
Embedding_District/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_nameEmbedding_District/embeddings
?
1Embedding_District/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_District/embeddings*
_output_shapes
:	?*
dtype0
?
!Embedding_Sub_District/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*2
shared_name#!Embedding_Sub_District/embeddings
?
5Embedding_Sub_District/embeddings/Read/ReadVariableOpReadVariableOp!Embedding_Sub_District/embeddings*
_output_shapes
:	?*
dtype0
?
Embedding_Crop/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:F**
shared_nameEmbedding_Crop/embeddings
?
-Embedding_Crop/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_Crop/embeddings*
_output_shapes

:F*
dtype0
?
Embedding_Block/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?M*+
shared_nameEmbedding_Block/embeddings
?
.Embedding_Block/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_Block/embeddings*
_output_shapes
:	?M*
dtype0
?
Embedding_State/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameEmbedding_State/embeddings
?
.Embedding_State/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_State/embeddings*
_output_shapes

:*
dtype0
?
Embedding_Cluster/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameEmbedding_Cluster/embeddings
?
0Embedding_Cluster/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_Cluster/embeddings*
_output_shapes

:*
dtype0
v
Dense0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:}d*
shared_nameDense0/kernel
o
!Dense0/kernel/Read/ReadVariableOpReadVariableOpDense0/kernel*
_output_shapes

:}d*
dtype0
n
Dense0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_nameDense0/bias
g
Dense0/bias/Read/ReadVariableOpReadVariableOpDense0/bias*
_output_shapes
:d*
dtype0
v
Dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*
shared_nameDense1/kernel
o
!Dense1/kernel/Read/ReadVariableOpReadVariableOpDense1/kernel*
_output_shapes

:d2*
dtype0
n
Dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameDense1/bias
g
Dense1/bias/Read/ReadVariableOpReadVariableOpDense1/bias*
_output_shapes
:2*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:2*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
$Adam/Embedding_District/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/Embedding_District/embeddings/m
?
8Adam/Embedding_District/embeddings/m/Read/ReadVariableOpReadVariableOp$Adam/Embedding_District/embeddings/m*
_output_shapes
:	?*
dtype0
?
(Adam/Embedding_Sub_District/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*9
shared_name*(Adam/Embedding_Sub_District/embeddings/m
?
<Adam/Embedding_Sub_District/embeddings/m/Read/ReadVariableOpReadVariableOp(Adam/Embedding_Sub_District/embeddings/m*
_output_shapes
:	?*
dtype0
?
 Adam/Embedding_Crop/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:F*1
shared_name" Adam/Embedding_Crop/embeddings/m
?
4Adam/Embedding_Crop/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/Embedding_Crop/embeddings/m*
_output_shapes

:F*
dtype0
?
!Adam/Embedding_Block/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?M*2
shared_name#!Adam/Embedding_Block/embeddings/m
?
5Adam/Embedding_Block/embeddings/m/Read/ReadVariableOpReadVariableOp!Adam/Embedding_Block/embeddings/m*
_output_shapes
:	?M*
dtype0
?
!Adam/Embedding_State/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!Adam/Embedding_State/embeddings/m
?
5Adam/Embedding_State/embeddings/m/Read/ReadVariableOpReadVariableOp!Adam/Embedding_State/embeddings/m*
_output_shapes

:*
dtype0
?
#Adam/Embedding_Cluster/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#Adam/Embedding_Cluster/embeddings/m
?
7Adam/Embedding_Cluster/embeddings/m/Read/ReadVariableOpReadVariableOp#Adam/Embedding_Cluster/embeddings/m*
_output_shapes

:*
dtype0
?
Adam/Dense0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:}d*%
shared_nameAdam/Dense0/kernel/m
}
(Adam/Dense0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense0/kernel/m*
_output_shapes

:}d*
dtype0
|
Adam/Dense0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_nameAdam/Dense0/bias/m
u
&Adam/Dense0/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense0/bias/m*
_output_shapes
:d*
dtype0
?
Adam/Dense1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*%
shared_nameAdam/Dense1/kernel/m
}
(Adam/Dense1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense1/kernel/m*
_output_shapes

:d2*
dtype0
|
Adam/Dense1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*#
shared_nameAdam/Dense1/bias/m
u
&Adam/Dense1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense1/bias/m*
_output_shapes
:2*
dtype0
?
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:2*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0
?
$Adam/Embedding_District/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/Embedding_District/embeddings/v
?
8Adam/Embedding_District/embeddings/v/Read/ReadVariableOpReadVariableOp$Adam/Embedding_District/embeddings/v*
_output_shapes
:	?*
dtype0
?
(Adam/Embedding_Sub_District/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*9
shared_name*(Adam/Embedding_Sub_District/embeddings/v
?
<Adam/Embedding_Sub_District/embeddings/v/Read/ReadVariableOpReadVariableOp(Adam/Embedding_Sub_District/embeddings/v*
_output_shapes
:	?*
dtype0
?
 Adam/Embedding_Crop/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:F*1
shared_name" Adam/Embedding_Crop/embeddings/v
?
4Adam/Embedding_Crop/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/Embedding_Crop/embeddings/v*
_output_shapes

:F*
dtype0
?
!Adam/Embedding_Block/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?M*2
shared_name#!Adam/Embedding_Block/embeddings/v
?
5Adam/Embedding_Block/embeddings/v/Read/ReadVariableOpReadVariableOp!Adam/Embedding_Block/embeddings/v*
_output_shapes
:	?M*
dtype0
?
!Adam/Embedding_State/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*2
shared_name#!Adam/Embedding_State/embeddings/v
?
5Adam/Embedding_State/embeddings/v/Read/ReadVariableOpReadVariableOp!Adam/Embedding_State/embeddings/v*
_output_shapes

:*
dtype0
?
#Adam/Embedding_Cluster/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*4
shared_name%#Adam/Embedding_Cluster/embeddings/v
?
7Adam/Embedding_Cluster/embeddings/v/Read/ReadVariableOpReadVariableOp#Adam/Embedding_Cluster/embeddings/v*
_output_shapes

:*
dtype0
?
Adam/Dense0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:}d*%
shared_nameAdam/Dense0/kernel/v
}
(Adam/Dense0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense0/kernel/v*
_output_shapes

:}d*
dtype0
|
Adam/Dense0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*#
shared_nameAdam/Dense0/bias/v
u
&Adam/Dense0/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense0/bias/v*
_output_shapes
:d*
dtype0
?
Adam/Dense1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*%
shared_nameAdam/Dense1/kernel/v
}
(Adam/Dense1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense1/kernel/v*
_output_shapes

:d2*
dtype0
|
Adam/Dense1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*#
shared_nameAdam/Dense1/bias/v
u
&Adam/Dense1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense1/bias/v*
_output_shapes
:2*
dtype0
?
Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:2*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?a
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?a
value?aB?a B?a
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer_with_weights-1
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer_with_weights-6
layer-24
layer-25
layer_with_weights-7
layer-26
layer-27
layer_with_weights-8
layer-28
	optimizer
	variables
 trainable_variables
!regularization_losses
"	keras_api
#
signatures
 
 
 
 
 
 
b
$
embeddings
%	variables
&trainable_variables
'regularization_losses
(	keras_api
b
)
embeddings
*	variables
+trainable_variables
,regularization_losses
-	keras_api
b
.
embeddings
/	variables
0trainable_variables
1regularization_losses
2	keras_api
b
3
embeddings
4	variables
5trainable_variables
6regularization_losses
7	keras_api
b
8
embeddings
9	variables
:trainable_variables
;regularization_losses
<	keras_api
b
=
embeddings
>	variables
?trainable_variables
@regularization_losses
A	keras_api
R
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
R
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
R
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
R
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
R
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
 
 
 
 
 
R
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
h

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
R
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h

hkernel
ibias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
R
n	variables
otrainable_variables
pregularization_losses
q	keras_api
h

rkernel
sbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
?
xiter

ybeta_1

zbeta_2
	{decay
|learning_rate$m?)m?.m?3m?8m?=m?^m?_m?hm?im?rm?sm?$v?)v?.v?3v?8v?=v?^v?_v?hv?iv?rv?sv?
V
$0
)1
.2
33
84
=5
^6
_7
h8
i9
r10
s11
V
$0
)1
.2
33
84
=5
^6
_7
h8
i9
r10
s11
 
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
 
mk
VARIABLE_VALUEEmbedding_District/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

$0

$0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
%	variables
&trainable_variables
'regularization_losses
qo
VARIABLE_VALUE!Embedding_Sub_District/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

)0

)0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
*	variables
+trainable_variables
,regularization_losses
ig
VARIABLE_VALUEEmbedding_Crop/embeddings:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUE

.0

.0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
jh
VARIABLE_VALUEEmbedding_Block/embeddings:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUE

30

30
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
jh
VARIABLE_VALUEEmbedding_State/embeddings:layer_with_weights-4/embeddings/.ATTRIBUTES/VARIABLE_VALUE

80

80
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
9	variables
:trainable_variables
;regularization_losses
lj
VARIABLE_VALUEEmbedding_Cluster/embeddings:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUE

=0

=0
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Z	variables
[trainable_variables
\regularization_losses
YW
VARIABLE_VALUEDense0/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEDense0/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

^0
_1

^0
_1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
`	variables
atrainable_variables
bregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
YW
VARIABLE_VALUEDense1/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEDense1/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

h0
i1

h0
i1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
j	variables
ktrainable_variables
lregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
n	variables
otrainable_variables
pregularization_losses
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

r0
s1

r0
s1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE$Adam/Embedding_District/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/Embedding_Sub_District/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/Embedding_Crop/embeddings/mVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/Embedding_Block/embeddings/mVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/Embedding_State/embeddings/mVlayer_with_weights-4/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/Embedding_Cluster/embeddings/mVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense0/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense0/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense1/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense1/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/Embedding_District/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/Embedding_Sub_District/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/Embedding_Crop/embeddings/vVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/Embedding_Block/embeddings/vVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/Embedding_State/embeddings/vVlayer_with_weights-4/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/Embedding_Cluster/embeddings/vVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense0/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense0/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense1/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense1/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
%serving_default_input_Area_Insured_HaPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
"serving_default_input_Area_Sown_HaPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
~
serving_default_input_BlockPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_input_ClusterPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
}
serving_default_input_CropPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_input_DistrictPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
%serving_default_input_Indemnity_LevelPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
&serving_default_input_SI_Per_Ha_Inr_HaPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
~
serving_default_input_StatePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
"serving_default_input_Sub_DistrictPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
%serving_default_input_Sum_Insured_InrPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall%serving_default_input_Area_Insured_Ha"serving_default_input_Area_Sown_Haserving_default_input_Blockserving_default_input_Clusterserving_default_input_Cropserving_default_input_District%serving_default_input_Indemnity_Level&serving_default_input_SI_Per_Ha_Inr_Haserving_default_input_State"serving_default_input_Sub_District%serving_default_input_Sum_Insured_InrEmbedding_Cluster/embeddingsEmbedding_State/embeddingsEmbedding_Block/embeddingsEmbedding_Crop/embeddings!Embedding_Sub_District/embeddingsEmbedding_District/embeddingsDense0/kernelDense0/biasDense1/kernelDense1/biasoutput/kerneloutput/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_9824064
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename1Embedding_District/embeddings/Read/ReadVariableOp5Embedding_Sub_District/embeddings/Read/ReadVariableOp-Embedding_Crop/embeddings/Read/ReadVariableOp.Embedding_Block/embeddings/Read/ReadVariableOp.Embedding_State/embeddings/Read/ReadVariableOp0Embedding_Cluster/embeddings/Read/ReadVariableOp!Dense0/kernel/Read/ReadVariableOpDense0/bias/Read/ReadVariableOp!Dense1/kernel/Read/ReadVariableOpDense1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp8Adam/Embedding_District/embeddings/m/Read/ReadVariableOp<Adam/Embedding_Sub_District/embeddings/m/Read/ReadVariableOp4Adam/Embedding_Crop/embeddings/m/Read/ReadVariableOp5Adam/Embedding_Block/embeddings/m/Read/ReadVariableOp5Adam/Embedding_State/embeddings/m/Read/ReadVariableOp7Adam/Embedding_Cluster/embeddings/m/Read/ReadVariableOp(Adam/Dense0/kernel/m/Read/ReadVariableOp&Adam/Dense0/bias/m/Read/ReadVariableOp(Adam/Dense1/kernel/m/Read/ReadVariableOp&Adam/Dense1/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp8Adam/Embedding_District/embeddings/v/Read/ReadVariableOp<Adam/Embedding_Sub_District/embeddings/v/Read/ReadVariableOp4Adam/Embedding_Crop/embeddings/v/Read/ReadVariableOp5Adam/Embedding_Block/embeddings/v/Read/ReadVariableOp5Adam/Embedding_State/embeddings/v/Read/ReadVariableOp7Adam/Embedding_Cluster/embeddings/v/Read/ReadVariableOp(Adam/Dense0/kernel/v/Read/ReadVariableOp&Adam/Dense0/bias/v/Read/ReadVariableOp(Adam/Dense1/kernel/v/Read/ReadVariableOp&Adam/Dense1/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_9825285
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameEmbedding_District/embeddings!Embedding_Sub_District/embeddingsEmbedding_Crop/embeddingsEmbedding_Block/embeddingsEmbedding_State/embeddingsEmbedding_Cluster/embeddingsDense0/kernelDense0/biasDense1/kernelDense1/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1$Adam/Embedding_District/embeddings/m(Adam/Embedding_Sub_District/embeddings/m Adam/Embedding_Crop/embeddings/m!Adam/Embedding_Block/embeddings/m!Adam/Embedding_State/embeddings/m#Adam/Embedding_Cluster/embeddings/mAdam/Dense0/kernel/mAdam/Dense0/bias/mAdam/Dense1/kernel/mAdam/Dense1/bias/mAdam/output/kernel/mAdam/output/bias/m$Adam/Embedding_District/embeddings/v(Adam/Embedding_Sub_District/embeddings/v Adam/Embedding_Crop/embeddings/v!Adam/Embedding_Block/embeddings/v!Adam/Embedding_State/embeddings/v#Adam/Embedding_Cluster/embeddings/vAdam/Dense0/kernel/vAdam/Dense0/bias/vAdam/Dense1/kernel/vAdam/Dense1/bias/vAdam/output/kernel/vAdam/output/bias/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_9825430??
?
?
__inference_loss_fn_3_9825077U
Bembedding_block_embeddings_regularizer_abs_readvariableop_resource:	?M
identity??9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpq
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpBembedding_block_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	?M*
dtype0?
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpBembedding_block_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	?M*
dtype0?
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: n
IdentityIdentity0Embedding_Block/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp
?
i
M__inference_Flatten_District_layer_call_and_return_conditional_losses_9822955

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
5__inference_Deep_embedded_model_layer_call_fn_9823635
input_block
input_cluster

input_crop
input_district
input_state
input_sub_district
input_area_insured_ha
input_area_sown_ha
input_indemnity_level
input_si_per_ha_inr_ha
input_sum_insured_inr
unknown:
	unknown_0:
	unknown_1:	?M
	unknown_2:F
	unknown_3:	?
	unknown_4:	?
	unknown_5:}d
	unknown_6:d
	unknown_7:d2
	unknown_8:2
	unknown_9:2

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_blockinput_cluster
input_cropinput_districtinput_stateinput_sub_districtinput_area_insured_hainput_area_sown_hainput_indemnity_levelinput_si_per_ha_inr_hainput_sum_insured_inrunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823569o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_Block:VR
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:WS
'
_output_shapes
:?????????
(
_user_specified_nameinput_District:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Sub_District:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_	[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:^
Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?_
?
 __inference__traced_save_9825285
file_prefix<
8savev2_embedding_district_embeddings_read_readvariableop@
<savev2_embedding_sub_district_embeddings_read_readvariableop8
4savev2_embedding_crop_embeddings_read_readvariableop9
5savev2_embedding_block_embeddings_read_readvariableop9
5savev2_embedding_state_embeddings_read_readvariableop;
7savev2_embedding_cluster_embeddings_read_readvariableop,
(savev2_dense0_kernel_read_readvariableop*
&savev2_dense0_bias_read_readvariableop,
(savev2_dense1_kernel_read_readvariableop*
&savev2_dense1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopC
?savev2_adam_embedding_district_embeddings_m_read_readvariableopG
Csavev2_adam_embedding_sub_district_embeddings_m_read_readvariableop?
;savev2_adam_embedding_crop_embeddings_m_read_readvariableop@
<savev2_adam_embedding_block_embeddings_m_read_readvariableop@
<savev2_adam_embedding_state_embeddings_m_read_readvariableopB
>savev2_adam_embedding_cluster_embeddings_m_read_readvariableop3
/savev2_adam_dense0_kernel_m_read_readvariableop1
-savev2_adam_dense0_bias_m_read_readvariableop3
/savev2_adam_dense1_kernel_m_read_readvariableop1
-savev2_adam_dense1_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableopC
?savev2_adam_embedding_district_embeddings_v_read_readvariableopG
Csavev2_adam_embedding_sub_district_embeddings_v_read_readvariableop?
;savev2_adam_embedding_crop_embeddings_v_read_readvariableop@
<savev2_adam_embedding_block_embeddings_v_read_readvariableop@
<savev2_adam_embedding_state_embeddings_v_read_readvariableopB
>savev2_adam_embedding_cluster_embeddings_v_read_readvariableop3
/savev2_adam_dense0_kernel_v_read_readvariableop1
-savev2_adam_dense0_bias_v_read_readvariableop3
/savev2_adam_dense1_kernel_v_read_readvariableop1
-savev2_adam_dense1_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-4/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-4/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:08savev2_embedding_district_embeddings_read_readvariableop<savev2_embedding_sub_district_embeddings_read_readvariableop4savev2_embedding_crop_embeddings_read_readvariableop5savev2_embedding_block_embeddings_read_readvariableop5savev2_embedding_state_embeddings_read_readvariableop7savev2_embedding_cluster_embeddings_read_readvariableop(savev2_dense0_kernel_read_readvariableop&savev2_dense0_bias_read_readvariableop(savev2_dense1_kernel_read_readvariableop&savev2_dense1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop?savev2_adam_embedding_district_embeddings_m_read_readvariableopCsavev2_adam_embedding_sub_district_embeddings_m_read_readvariableop;savev2_adam_embedding_crop_embeddings_m_read_readvariableop<savev2_adam_embedding_block_embeddings_m_read_readvariableop<savev2_adam_embedding_state_embeddings_m_read_readvariableop>savev2_adam_embedding_cluster_embeddings_m_read_readvariableop/savev2_adam_dense0_kernel_m_read_readvariableop-savev2_adam_dense0_bias_m_read_readvariableop/savev2_adam_dense1_kernel_m_read_readvariableop-savev2_adam_dense1_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop?savev2_adam_embedding_district_embeddings_v_read_readvariableopCsavev2_adam_embedding_sub_district_embeddings_v_read_readvariableop;savev2_adam_embedding_crop_embeddings_v_read_readvariableop<savev2_adam_embedding_block_embeddings_v_read_readvariableop<savev2_adam_embedding_state_embeddings_v_read_readvariableop>savev2_adam_embedding_cluster_embeddings_v_read_readvariableop/savev2_adam_dense0_kernel_v_read_readvariableop-savev2_adam_dense0_bias_v_read_readvariableop/savev2_adam_dense1_kernel_v_read_readvariableop-savev2_adam_dense1_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:	?:F:	?M:::}d:d:d2:2:2:: : : : : : : : : :	?:	?:F:	?M:::}d:d:d2:2:2::	?:	?:F:	?M:::}d:d:d2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?:%!

_output_shapes
:	?:$ 

_output_shapes

:F:%!

_output_shapes
:	?M:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:}d: 

_output_shapes
:d:$	 

_output_shapes

:d2: 


_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%!

_output_shapes
:	?:$ 

_output_shapes

:F:%!

_output_shapes
:	?M:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:}d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$  

_output_shapes

:2: !

_output_shapes
::%"!

_output_shapes
:	?:%#!

_output_shapes
:	?:$$ 

_output_shapes

:F:%%!

_output_shapes
:	?M:$& 

_output_shapes

::$' 

_output_shapes

::$( 

_output_shapes

:}d: )

_output_shapes
:d:$* 

_output_shapes

:d2: +

_output_shapes
:2:$, 

_output_shapes

:2: -

_output_shapes
::.

_output_shapes
: 
?
N
2__inference_Flatten_District_layer_call_fn_9824793

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_Flatten_District_layer_call_and_return_conditional_losses_9822955`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_Flatten_Cluster_layer_call_fn_9824848

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_9822995`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
*__inference_Dropout1_layer_call_fn_9824961

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout1_layer_call_and_return_conditional_losses_9823226o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
c
E__inference_Dropout1_layer_call_and_return_conditional_losses_9823060

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_9822858

inputs+
embedding_lookup_9822837:	?M
identity??9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9822837Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9822837*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9822837*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9822837*
_output_shapes
:	?M*
dtype0?
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9822837*
_output_shapes
:	?M*
dtype0?
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823781
input_block
input_cluster

input_crop
input_district
input_state
input_sub_district
input_area_insured_ha
input_area_sown_ha
input_indemnity_level
input_si_per_ha_inr_ha
input_sum_insured_inr+
embedding_cluster_9823648:)
embedding_state_9823651:*
embedding_block_9823654:	?M(
embedding_crop_9823657:F1
embedding_sub_district_9823660:	?-
embedding_district_9823663:	? 
dense0_9823673:}d
dense0_9823675:d 
dense1_9823679:d2
dense1_9823681:2 
output_9823685:2
output_9823687:
identity??Dense0/StatefulPartitionedCall?Dense1/StatefulPartitionedCall?'Embedding_Block/StatefulPartitionedCall?9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp?)Embedding_Cluster/StatefulPartitionedCall?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?&Embedding_Crop/StatefulPartitionedCall?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?*Embedding_District/StatefulPartitionedCall?<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp??Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?.Embedding_Sub_District/StatefulPartitionedCall?@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp?CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
)Embedding_Cluster/StatefulPartitionedCallStatefulPartitionedCallinput_clusterembedding_cluster_9823648*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_9822800?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinput_stateembedding_state_9823651*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_9822829?
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinput_blockembedding_block_9823654*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_9822858?
&Embedding_Crop/StatefulPartitionedCallStatefulPartitionedCall
input_cropembedding_crop_9823657*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_9822887?
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinput_sub_districtembedding_sub_district_9823660*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_9822916?
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinput_districtembedding_district_9823663*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_9822945?
 Flatten_District/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_Flatten_District_layer_call_and_return_conditional_losses_9822955?
$Flatten_Sub_District/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_Flatten_Sub_District_layer_call_and_return_conditional_losses_9822963?
Flatten_Crop/PartitionedCallPartitionedCall/Embedding_Crop/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_9822971?
Flatten_Block/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Flatten_Block_layer_call_and_return_conditional_losses_9822979?
Flatten_State/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Flatten_State_layer_call_and_return_conditional_losses_9822987?
Flatten_Cluster/PartitionedCallPartitionedCall2Embedding_Cluster/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_9822995?
concatted/PartitionedCallPartitionedCall)Flatten_District/PartitionedCall:output:0-Flatten_Sub_District/PartitionedCall:output:0%Flatten_Crop/PartitionedCall:output:0&Flatten_Block/PartitionedCall:output:0&Flatten_State/PartitionedCall:output:0(Flatten_Cluster/PartitionedCall:output:0input_area_sown_hainput_area_insured_hainput_si_per_ha_inr_hainput_sum_insured_inrinput_indemnity_level*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????}* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatted_layer_call_and_return_conditional_losses_9823013?
Dense0/StatefulPartitionedCallStatefulPartitionedCall"concatted/PartitionedCall:output:0dense0_9823673dense0_9823675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dense0_layer_call_and_return_conditional_losses_9823025?
Dropout0/PartitionedCallPartitionedCall'Dense0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout0_layer_call_and_return_conditional_losses_9823036?
Dense1/StatefulPartitionedCallStatefulPartitionedCall!Dropout0/PartitionedCall:output:0dense1_9823679dense1_9823681*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dense1_layer_call_and_return_conditional_losses_9823049?
Dropout1/PartitionedCallPartitionedCall'Dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout1_layer_call_and_return_conditional_losses_9823060?
output/StatefulPartitionedCallStatefulPartitionedCall!Dropout1/PartitionedCall:output:0output_9823685output_9823687*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_9823072t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_9823663*
_output_shapes
:	?*
dtype0?
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_9823663*
_output_shapes
:	?*
dtype0?
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_9823660*
_output_shapes
:	?*
dtype0?
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_9823660*
_output_shapes
:	?*
dtype0?
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_crop_9823657*
_output_shapes

:F*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
)Embedding_Crop/embeddings/Regularizer/SumSum-Embedding_Crop/embeddings/Regularizer/Abs:y:06Embedding_Crop/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
)Embedding_Crop/embeddings/Regularizer/mulMul4Embedding_Crop/embeddings/Regularizer/mul/x:output:02Embedding_Crop/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
)Embedding_Crop/embeddings/Regularizer/addAddV24Embedding_Crop/embeddings/Regularizer/Const:output:0-Embedding_Crop/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_crop_9823657*
_output_shapes

:F*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
+Embedding_Crop/embeddings/Regularizer/Sum_1Sum0Embedding_Crop/embeddings/Regularizer/Square:y:06Embedding_Crop/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: r
-Embedding_Crop/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
+Embedding_Crop/embeddings/Regularizer/mul_1Mul6Embedding_Crop/embeddings/Regularizer/mul_1/x:output:04Embedding_Crop/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
+Embedding_Crop/embeddings/Regularizer/add_1AddV2-Embedding_Crop/embeddings/Regularizer/add:z:0/Embedding_Crop/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_9823654*
_output_shapes
:	?M*
dtype0?
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_9823654*
_output_shapes
:	?M*
dtype0?
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_9823651*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_9823651*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_cluster_9823648*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Cluster/embeddings/Regularizer/SumSum0Embedding_Cluster/embeddings/Regularizer/Abs:y:09Embedding_Cluster/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Cluster/embeddings/Regularizer/mulMul7Embedding_Cluster/embeddings/Regularizer/mul/x:output:05Embedding_Cluster/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
,Embedding_Cluster/embeddings/Regularizer/addAddV27Embedding_Cluster/embeddings/Regularizer/Const:output:00Embedding_Cluster/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_cluster_9823648*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
.Embedding_Cluster/embeddings/Regularizer/Sum_1Sum3Embedding_Cluster/embeddings/Regularizer/Square:y:09Embedding_Cluster/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: u
0Embedding_Cluster/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
.Embedding_Cluster/embeddings/Regularizer/mul_1Mul9Embedding_Cluster/embeddings/Regularizer/mul_1/x:output:07Embedding_Cluster/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
.Embedding_Cluster/embeddings/Regularizer/add_1AddV20Embedding_Cluster/embeddings/Regularizer/add:z:02Embedding_Cluster/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????	
NoOpNoOp^Dense0/StatefulPartitionedCall^Dense1/StatefulPartitionedCall(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp*^Embedding_Cluster/StatefulPartitionedCall<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp'^Embedding_Crop/StatefulPartitionedCall9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2V
)Embedding_Cluster/StatefulPartitionedCall)Embedding_Cluster/StatefulPartitionedCall2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2P
&Embedding_Crop/StatefulPartitionedCall&Embedding_Crop/StatefulPartitionedCall2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_Block:VR
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:WS
'
_output_shapes
:?????????
(
_user_specified_nameinput_District:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Sub_District:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_	[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:^
Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?
?
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_9824647

inputs*
embedding_lookup_9824626:F
identity??8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9824626Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9824626*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9824626*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9824626*
_output_shapes

:F*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
)Embedding_Crop/embeddings/Regularizer/SumSum-Embedding_Crop/embeddings/Regularizer/Abs:y:06Embedding_Crop/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
)Embedding_Crop/embeddings/Regularizer/mulMul4Embedding_Crop/embeddings/Regularizer/mul/x:output:02Embedding_Crop/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
)Embedding_Crop/embeddings/Regularizer/addAddV24Embedding_Crop/embeddings/Regularizer/Const:output:0-Embedding_Crop/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9824626*
_output_shapes

:F*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
+Embedding_Crop/embeddings/Regularizer/Sum_1Sum0Embedding_Crop/embeddings/Regularizer/Square:y:06Embedding_Crop/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: r
-Embedding_Crop/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
+Embedding_Crop/embeddings/Regularizer/mul_1Mul6Embedding_Crop/embeddings/Regularizer/mul_1/x:output:04Embedding_Crop/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
+Embedding_Crop/embeddings/Regularizer/add_1AddV2-Embedding_Crop/embeddings/Regularizer/add:z:0/Embedding_Crop/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9824506
inputs_0_block
inputs_0_cluster
inputs_0_crop
inputs_0_district
inputs_0_state
inputs_0_sub_district
inputs_1_area_insured_ha
inputs_1_area_sown_ha
inputs_1_indemnity_level
inputs_1_si_per_ha_inr_ha
inputs_1_sum_insured_inr<
*embedding_cluster_embedding_lookup_9824331::
(embedding_state_embedding_lookup_9824337:;
(embedding_block_embedding_lookup_9824343:	?M9
'embedding_crop_embedding_lookup_9824349:FB
/embedding_sub_district_embedding_lookup_9824355:	?>
+embedding_district_embedding_lookup_9824361:	?7
%dense0_matmul_readvariableop_resource:}d4
&dense0_biasadd_readvariableop_resource:d7
%dense1_matmul_readvariableop_resource:d24
&dense1_biasadd_readvariableop_resource:27
%output_matmul_readvariableop_resource:24
&output_biasadd_readvariableop_resource:
identity??Dense0/BiasAdd/ReadVariableOp?Dense0/MatMul/ReadVariableOp?Dense1/BiasAdd/ReadVariableOp?Dense1/MatMul/ReadVariableOp? Embedding_Block/embedding_lookup?9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp?"Embedding_Cluster/embedding_lookup?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?Embedding_Crop/embedding_lookup?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?#Embedding_District/embedding_lookup?<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp??Embedding_District/embeddings/Regularizer/Square/ReadVariableOp? Embedding_State/embedding_lookup?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?'Embedding_Sub_District/embedding_lookup?@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp?CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpq
Embedding_Cluster/CastCastinputs_0_cluster*

DstT0*

SrcT0*'
_output_shapes
:??????????
"Embedding_Cluster/embedding_lookupResourceGather*embedding_cluster_embedding_lookup_9824331Embedding_Cluster/Cast:y:0*
Tindices0*=
_class3
1/loc:@Embedding_Cluster/embedding_lookup/9824331*+
_output_shapes
:?????????*
dtype0?
+Embedding_Cluster/embedding_lookup/IdentityIdentity+Embedding_Cluster/embedding_lookup:output:0*
T0*=
_class3
1/loc:@Embedding_Cluster/embedding_lookup/9824331*+
_output_shapes
:??????????
-Embedding_Cluster/embedding_lookup/Identity_1Identity4Embedding_Cluster/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????m
Embedding_State/CastCastinputs_0_state*

DstT0*

SrcT0*'
_output_shapes
:??????????
 Embedding_State/embedding_lookupResourceGather(embedding_state_embedding_lookup_9824337Embedding_State/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_State/embedding_lookup/9824337*+
_output_shapes
:?????????*
dtype0?
)Embedding_State/embedding_lookup/IdentityIdentity)Embedding_State/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_State/embedding_lookup/9824337*+
_output_shapes
:??????????
+Embedding_State/embedding_lookup/Identity_1Identity2Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????m
Embedding_Block/CastCastinputs_0_block*

DstT0*

SrcT0*'
_output_shapes
:??????????
 Embedding_Block/embedding_lookupResourceGather(embedding_block_embedding_lookup_9824343Embedding_Block/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/9824343*+
_output_shapes
:?????????*
dtype0?
)Embedding_Block/embedding_lookup/IdentityIdentity)Embedding_Block/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/9824343*+
_output_shapes
:??????????
+Embedding_Block/embedding_lookup/Identity_1Identity2Embedding_Block/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????k
Embedding_Crop/CastCastinputs_0_crop*

DstT0*

SrcT0*'
_output_shapes
:??????????
Embedding_Crop/embedding_lookupResourceGather'embedding_crop_embedding_lookup_9824349Embedding_Crop/Cast:y:0*
Tindices0*:
_class0
.,loc:@Embedding_Crop/embedding_lookup/9824349*+
_output_shapes
:?????????*
dtype0?
(Embedding_Crop/embedding_lookup/IdentityIdentity(Embedding_Crop/embedding_lookup:output:0*
T0*:
_class0
.,loc:@Embedding_Crop/embedding_lookup/9824349*+
_output_shapes
:??????????
*Embedding_Crop/embedding_lookup/Identity_1Identity1Embedding_Crop/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????{
Embedding_Sub_District/CastCastinputs_0_sub_district*

DstT0*

SrcT0*'
_output_shapes
:??????????
'Embedding_Sub_District/embedding_lookupResourceGather/embedding_sub_district_embedding_lookup_9824355Embedding_Sub_District/Cast:y:0*
Tindices0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/9824355*+
_output_shapes
:?????????*
dtype0?
0Embedding_Sub_District/embedding_lookup/IdentityIdentity0Embedding_Sub_District/embedding_lookup:output:0*
T0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/9824355*+
_output_shapes
:??????????
2Embedding_Sub_District/embedding_lookup/Identity_1Identity9Embedding_Sub_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????s
Embedding_District/CastCastinputs_0_district*

DstT0*

SrcT0*'
_output_shapes
:??????????
#Embedding_District/embedding_lookupResourceGather+embedding_district_embedding_lookup_9824361Embedding_District/Cast:y:0*
Tindices0*>
_class4
20loc:@Embedding_District/embedding_lookup/9824361*+
_output_shapes
:?????????*
dtype0?
,Embedding_District/embedding_lookup/IdentityIdentity,Embedding_District/embedding_lookup:output:0*
T0*>
_class4
20loc:@Embedding_District/embedding_lookup/9824361*+
_output_shapes
:??????????
.Embedding_District/embedding_lookup/Identity_1Identity5Embedding_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????g
Flatten_District/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_District/ReshapeReshape7Embedding_District/embedding_lookup/Identity_1:output:0Flatten_District/Const:output:0*
T0*'
_output_shapes
:?????????k
Flatten_Sub_District/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_Sub_District/ReshapeReshape;Embedding_Sub_District/embedding_lookup/Identity_1:output:0#Flatten_Sub_District/Const:output:0*
T0*'
_output_shapes
:?????????c
Flatten_Crop/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_Crop/ReshapeReshape3Embedding_Crop/embedding_lookup/Identity_1:output:0Flatten_Crop/Const:output:0*
T0*'
_output_shapes
:?????????d
Flatten_Block/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_Block/ReshapeReshape4Embedding_Block/embedding_lookup/Identity_1:output:0Flatten_Block/Const:output:0*
T0*'
_output_shapes
:?????????d
Flatten_State/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_State/ReshapeReshape4Embedding_State/embedding_lookup/Identity_1:output:0Flatten_State/Const:output:0*
T0*'
_output_shapes
:?????????f
Flatten_Cluster/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_Cluster/ReshapeReshape6Embedding_Cluster/embedding_lookup/Identity_1:output:0Flatten_Cluster/Const:output:0*
T0*'
_output_shapes
:?????????W
concatted/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatted/concatConcatV2!Flatten_District/Reshape:output:0%Flatten_Sub_District/Reshape:output:0Flatten_Crop/Reshape:output:0Flatten_Block/Reshape:output:0Flatten_State/Reshape:output:0 Flatten_Cluster/Reshape:output:0inputs_1_area_sown_hainputs_1_area_insured_hainputs_1_si_per_ha_inr_hainputs_1_sum_insured_inrinputs_1_indemnity_levelconcatted/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????}?
Dense0/MatMul/ReadVariableOpReadVariableOp%dense0_matmul_readvariableop_resource*
_output_shapes

:}d*
dtype0?
Dense0/MatMulMatMulconcatted/concat:output:0$Dense0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
Dense0/BiasAdd/ReadVariableOpReadVariableOp&dense0_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
Dense0/BiasAddBiasAddDense0/MatMul:product:0%Dense0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d[
Dropout0/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
Dropout0/dropout/MulMulDense0/BiasAdd:output:0Dropout0/dropout/Const:output:0*
T0*'
_output_shapes
:?????????d]
Dropout0/dropout/ShapeShapeDense0/BiasAdd:output:0*
T0*
_output_shapes
:?
-Dropout0/dropout/random_uniform/RandomUniformRandomUniformDropout0/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype0*

seed*d
Dropout0/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
Dropout0/dropout/GreaterEqualGreaterEqual6Dropout0/dropout/random_uniform/RandomUniform:output:0(Dropout0/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????d?
Dropout0/dropout/CastCast!Dropout0/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d?
Dropout0/dropout/Mul_1MulDropout0/dropout/Mul:z:0Dropout0/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????d?
Dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0?
Dense1/MatMulMatMulDropout0/dropout/Mul_1:z:0$Dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
Dense1/BiasAddBiasAddDense1/MatMul:product:0%Dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2^
Dense1/ReluReluDense1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2[
Dropout1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
Dropout1/dropout/MulMulDense1/Relu:activations:0Dropout1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2_
Dropout1/dropout/ShapeShapeDense1/Relu:activations:0*
T0*
_output_shapes
:?
-Dropout1/dropout/random_uniform/RandomUniformRandomUniformDropout1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed**
seed2d
Dropout1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
Dropout1/dropout/GreaterEqualGreaterEqual6Dropout1/dropout/random_uniform/RandomUniform:output:0(Dropout1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2?
Dropout1/dropout/CastCast!Dropout1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2?
Dropout1/dropout/Mul_1MulDropout1/dropout/Mul:z:0Dropout1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
output/MatMulMatMulDropout1/dropout/Mul_1:z:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_9824361*
_output_shapes
:	?*
dtype0?
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_9824361*
_output_shapes
:	?*
dtype0?
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_9824355*
_output_shapes
:	?*
dtype0?
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_9824355*
_output_shapes
:	?*
dtype0?
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp'embedding_crop_embedding_lookup_9824349*
_output_shapes

:F*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
)Embedding_Crop/embeddings/Regularizer/SumSum-Embedding_Crop/embeddings/Regularizer/Abs:y:06Embedding_Crop/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
)Embedding_Crop/embeddings/Regularizer/mulMul4Embedding_Crop/embeddings/Regularizer/mul/x:output:02Embedding_Crop/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
)Embedding_Crop/embeddings/Regularizer/addAddV24Embedding_Crop/embeddings/Regularizer/Const:output:0-Embedding_Crop/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp'embedding_crop_embedding_lookup_9824349*
_output_shapes

:F*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
+Embedding_Crop/embeddings/Regularizer/Sum_1Sum0Embedding_Crop/embeddings/Regularizer/Square:y:06Embedding_Crop/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: r
-Embedding_Crop/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
+Embedding_Crop/embeddings/Regularizer/mul_1Mul6Embedding_Crop/embeddings/Regularizer/mul_1/x:output:04Embedding_Crop/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
+Embedding_Crop/embeddings/Regularizer/add_1AddV2-Embedding_Crop/embeddings/Regularizer/add:z:0/Embedding_Crop/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_9824343*
_output_shapes
:	?M*
dtype0?
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_9824343*
_output_shapes
:	?M*
dtype0?
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_9824337*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_9824337*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp*embedding_cluster_embedding_lookup_9824331*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Cluster/embeddings/Regularizer/SumSum0Embedding_Cluster/embeddings/Regularizer/Abs:y:09Embedding_Cluster/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Cluster/embeddings/Regularizer/mulMul7Embedding_Cluster/embeddings/Regularizer/mul/x:output:05Embedding_Cluster/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
,Embedding_Cluster/embeddings/Regularizer/addAddV27Embedding_Cluster/embeddings/Regularizer/Const:output:00Embedding_Cluster/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp*embedding_cluster_embedding_lookup_9824331*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
.Embedding_Cluster/embeddings/Regularizer/Sum_1Sum3Embedding_Cluster/embeddings/Regularizer/Square:y:09Embedding_Cluster/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: u
0Embedding_Cluster/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
.Embedding_Cluster/embeddings/Regularizer/mul_1Mul9Embedding_Cluster/embeddings/Regularizer/mul_1/x:output:07Embedding_Cluster/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
.Embedding_Cluster/embeddings/Regularizer/add_1AddV20Embedding_Cluster/embeddings/Regularizer/add:z:02Embedding_Cluster/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: f
IdentityIdentityoutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????	
NoOpNoOp^Dense0/BiasAdd/ReadVariableOp^Dense0/MatMul/ReadVariableOp^Dense1/BiasAdd/ReadVariableOp^Dense1/MatMul/ReadVariableOp!^Embedding_Block/embedding_lookup:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp#^Embedding_Cluster/embedding_lookup<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp ^Embedding_Crop/embedding_lookup9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp$^Embedding_District/embedding_lookup=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp!^Embedding_State/embedding_lookup:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_Sub_District/embedding_lookupA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2>
Dense0/BiasAdd/ReadVariableOpDense0/BiasAdd/ReadVariableOp2<
Dense0/MatMul/ReadVariableOpDense0/MatMul/ReadVariableOp2>
Dense1/BiasAdd/ReadVariableOpDense1/BiasAdd/ReadVariableOp2<
Dense1/MatMul/ReadVariableOpDense1/MatMul/ReadVariableOp2D
 Embedding_Block/embedding_lookup Embedding_Block/embedding_lookup2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2H
"Embedding_Cluster/embedding_lookup"Embedding_Cluster/embedding_lookup2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2B
Embedding_Crop/embedding_lookupEmbedding_Crop/embedding_lookup2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2J
#Embedding_District/embedding_lookup#Embedding_District/embedding_lookup2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2D
 Embedding_State/embedding_lookup Embedding_State/embedding_lookup2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_Sub_District/embedding_lookup'Embedding_Sub_District/embedding_lookup2?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/Block:YU
'
_output_shapes
:?????????
*
_user_specified_nameinputs/0/Cluster:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/0/Crop:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/0/Sub_District:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Area_Insured_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/1/Area_Sown_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Indemnity_Level:b	^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/1/SI_Per_Ha_Inr_Ha:a
]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Sum_Insured_Inr
??
?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823169

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10+
embedding_cluster_9822801:)
embedding_state_9822830:*
embedding_block_9822859:	?M(
embedding_crop_9822888:F1
embedding_sub_district_9822917:	?-
embedding_district_9822946:	? 
dense0_9823026:}d
dense0_9823028:d 
dense1_9823050:d2
dense1_9823052:2 
output_9823073:2
output_9823075:
identity??Dense0/StatefulPartitionedCall?Dense1/StatefulPartitionedCall?'Embedding_Block/StatefulPartitionedCall?9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp?)Embedding_Cluster/StatefulPartitionedCall?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?&Embedding_Crop/StatefulPartitionedCall?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?*Embedding_District/StatefulPartitionedCall?<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp??Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?.Embedding_Sub_District/StatefulPartitionedCall?@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp?CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
)Embedding_Cluster/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_cluster_9822801*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_9822800?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinputs_4embedding_state_9822830*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_9822829?
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_block_9822859*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_9822858?
&Embedding_Crop/StatefulPartitionedCallStatefulPartitionedCallinputs_2embedding_crop_9822888*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_9822887?
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinputs_5embedding_sub_district_9822917*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_9822916?
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinputs_3embedding_district_9822946*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_9822945?
 Flatten_District/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_Flatten_District_layer_call_and_return_conditional_losses_9822955?
$Flatten_Sub_District/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_Flatten_Sub_District_layer_call_and_return_conditional_losses_9822963?
Flatten_Crop/PartitionedCallPartitionedCall/Embedding_Crop/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_9822971?
Flatten_Block/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Flatten_Block_layer_call_and_return_conditional_losses_9822979?
Flatten_State/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Flatten_State_layer_call_and_return_conditional_losses_9822987?
Flatten_Cluster/PartitionedCallPartitionedCall2Embedding_Cluster/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_9822995?
concatted/PartitionedCallPartitionedCall)Flatten_District/PartitionedCall:output:0-Flatten_Sub_District/PartitionedCall:output:0%Flatten_Crop/PartitionedCall:output:0&Flatten_Block/PartitionedCall:output:0&Flatten_State/PartitionedCall:output:0(Flatten_Cluster/PartitionedCall:output:0inputs_7inputs_6inputs_9	inputs_10inputs_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????}* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatted_layer_call_and_return_conditional_losses_9823013?
Dense0/StatefulPartitionedCallStatefulPartitionedCall"concatted/PartitionedCall:output:0dense0_9823026dense0_9823028*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dense0_layer_call_and_return_conditional_losses_9823025?
Dropout0/PartitionedCallPartitionedCall'Dense0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout0_layer_call_and_return_conditional_losses_9823036?
Dense1/StatefulPartitionedCallStatefulPartitionedCall!Dropout0/PartitionedCall:output:0dense1_9823050dense1_9823052*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dense1_layer_call_and_return_conditional_losses_9823049?
Dropout1/PartitionedCallPartitionedCall'Dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout1_layer_call_and_return_conditional_losses_9823060?
output/StatefulPartitionedCallStatefulPartitionedCall!Dropout1/PartitionedCall:output:0output_9823073output_9823075*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_9823072t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_9822946*
_output_shapes
:	?*
dtype0?
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_9822946*
_output_shapes
:	?*
dtype0?
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_9822917*
_output_shapes
:	?*
dtype0?
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_9822917*
_output_shapes
:	?*
dtype0?
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_crop_9822888*
_output_shapes

:F*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
)Embedding_Crop/embeddings/Regularizer/SumSum-Embedding_Crop/embeddings/Regularizer/Abs:y:06Embedding_Crop/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
)Embedding_Crop/embeddings/Regularizer/mulMul4Embedding_Crop/embeddings/Regularizer/mul/x:output:02Embedding_Crop/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
)Embedding_Crop/embeddings/Regularizer/addAddV24Embedding_Crop/embeddings/Regularizer/Const:output:0-Embedding_Crop/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_crop_9822888*
_output_shapes

:F*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
+Embedding_Crop/embeddings/Regularizer/Sum_1Sum0Embedding_Crop/embeddings/Regularizer/Square:y:06Embedding_Crop/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: r
-Embedding_Crop/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
+Embedding_Crop/embeddings/Regularizer/mul_1Mul6Embedding_Crop/embeddings/Regularizer/mul_1/x:output:04Embedding_Crop/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
+Embedding_Crop/embeddings/Regularizer/add_1AddV2-Embedding_Crop/embeddings/Regularizer/add:z:0/Embedding_Crop/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_9822859*
_output_shapes
:	?M*
dtype0?
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_9822859*
_output_shapes
:	?M*
dtype0?
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_9822830*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_9822830*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_cluster_9822801*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Cluster/embeddings/Regularizer/SumSum0Embedding_Cluster/embeddings/Regularizer/Abs:y:09Embedding_Cluster/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Cluster/embeddings/Regularizer/mulMul7Embedding_Cluster/embeddings/Regularizer/mul/x:output:05Embedding_Cluster/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
,Embedding_Cluster/embeddings/Regularizer/addAddV27Embedding_Cluster/embeddings/Regularizer/Const:output:00Embedding_Cluster/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_cluster_9822801*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
.Embedding_Cluster/embeddings/Regularizer/Sum_1Sum3Embedding_Cluster/embeddings/Regularizer/Square:y:09Embedding_Cluster/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: u
0Embedding_Cluster/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
.Embedding_Cluster/embeddings/Regularizer/mul_1Mul9Embedding_Cluster/embeddings/Regularizer/mul_1/x:output:07Embedding_Cluster/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
.Embedding_Cluster/embeddings/Regularizer/add_1AddV20Embedding_Cluster/embeddings/Regularizer/add:z:02Embedding_Cluster/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????	
NoOpNoOp^Dense0/StatefulPartitionedCall^Dense1/StatefulPartitionedCall(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp*^Embedding_Cluster/StatefulPartitionedCall<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp'^Embedding_Crop/StatefulPartitionedCall9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2V
)Embedding_Cluster/StatefulPartitionedCall)Embedding_Cluster/StatefulPartitionedCall2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2P
&Embedding_Crop/StatefulPartitionedCall&Embedding_Crop/StatefulPartitionedCall2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:O	K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:O
K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_9822887

inputs*
embedding_lookup_9822866:F
identity??8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9822866Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9822866*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9822866*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9822866*
_output_shapes

:F*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
)Embedding_Crop/embeddings/Regularizer/SumSum-Embedding_Crop/embeddings/Regularizer/Abs:y:06Embedding_Crop/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
)Embedding_Crop/embeddings/Regularizer/mulMul4Embedding_Crop/embeddings/Regularizer/mul/x:output:02Embedding_Crop/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
)Embedding_Crop/embeddings/Regularizer/addAddV24Embedding_Crop/embeddings/Regularizer/Const:output:0-Embedding_Crop/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9822866*
_output_shapes

:F*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
+Embedding_Crop/embeddings/Regularizer/Sum_1Sum0Embedding_Crop/embeddings/Regularizer/Square:y:06Embedding_Crop/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: r
-Embedding_Crop/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
+Embedding_Crop/embeddings/Regularizer/mul_1Mul6Embedding_Crop/embeddings/Regularizer/mul_1/x:output:04Embedding_Crop/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
+Embedding_Crop/embeddings/Regularizer/add_1AddV2-Embedding_Crop/embeddings/Regularizer/add:z:0/Embedding_Crop/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_Dense1_layer_call_fn_9824940

inputs
unknown:d2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dense1_layer_call_and_return_conditional_losses_9823049o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_9824694

inputs+
embedding_lookup_9824673:	?M
identity??9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9824673Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9824673*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9824673*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9824673*
_output_shapes
:	?M*
dtype0?
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9824673*
_output_shapes
:	?M*
dtype0?
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_concatted_layer_call_fn_9824869
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????}* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatted_layer_call_and_return_conditional_losses_9823013`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:?????????
#
_user_specified_name	inputs/10
? 
?
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_9824788

inputs*
embedding_lookup_9824767:
identity??;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9824767Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9824767*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9824767*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????s
.Embedding_Cluster/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9824767*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Cluster/embeddings/Regularizer/SumSum0Embedding_Cluster/embeddings/Regularizer/Abs:y:09Embedding_Cluster/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Cluster/embeddings/Regularizer/mulMul7Embedding_Cluster/embeddings/Regularizer/mul/x:output:05Embedding_Cluster/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
,Embedding_Cluster/embeddings/Regularizer/addAddV27Embedding_Cluster/embeddings/Regularizer/Const:output:00Embedding_Cluster/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9824767*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
.Embedding_Cluster/embeddings/Regularizer/Sum_1Sum3Embedding_Cluster/embeddings/Regularizer/Square:y:09Embedding_Cluster/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: u
0Embedding_Cluster/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
.Embedding_Cluster/embeddings/Regularizer/mul_1Mul9Embedding_Cluster/embeddings/Regularizer/mul_1/x:output:07Embedding_Cluster/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
.Embedding_Cluster/embeddings/Regularizer/add_1AddV20Embedding_Cluster/embeddings/Regularizer/add:z:02Embedding_Cluster/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
d
E__inference_Dropout0_layer_call_and_return_conditional_losses_9823259

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????dC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????do
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????di
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????dY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
C__inference_output_layer_call_and_return_conditional_losses_9824997

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
c
E__inference_Dropout0_layer_call_and_return_conditional_losses_9824919

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
(__inference_output_layer_call_fn_9824987

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_9823072o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
F__inference_concatted_layer_call_and_return_conditional_losses_9823013

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????}W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:O	K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:O
K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_9822748
input_block
input_cluster

input_crop
input_district
input_state
input_sub_district
input_area_insured_ha
input_area_sown_ha
input_indemnity_level
input_si_per_ha_inr_ha
input_sum_insured_inrP
>deep_embedded_model_embedding_cluster_embedding_lookup_9822677:N
<deep_embedded_model_embedding_state_embedding_lookup_9822683:O
<deep_embedded_model_embedding_block_embedding_lookup_9822689:	?MM
;deep_embedded_model_embedding_crop_embedding_lookup_9822695:FV
Cdeep_embedded_model_embedding_sub_district_embedding_lookup_9822701:	?R
?deep_embedded_model_embedding_district_embedding_lookup_9822707:	?K
9deep_embedded_model_dense0_matmul_readvariableop_resource:}dH
:deep_embedded_model_dense0_biasadd_readvariableop_resource:dK
9deep_embedded_model_dense1_matmul_readvariableop_resource:d2H
:deep_embedded_model_dense1_biasadd_readvariableop_resource:2K
9deep_embedded_model_output_matmul_readvariableop_resource:2H
:deep_embedded_model_output_biasadd_readvariableop_resource:
identity??1Deep_embedded_model/Dense0/BiasAdd/ReadVariableOp?0Deep_embedded_model/Dense0/MatMul/ReadVariableOp?1Deep_embedded_model/Dense1/BiasAdd/ReadVariableOp?0Deep_embedded_model/Dense1/MatMul/ReadVariableOp?4Deep_embedded_model/Embedding_Block/embedding_lookup?6Deep_embedded_model/Embedding_Cluster/embedding_lookup?3Deep_embedded_model/Embedding_Crop/embedding_lookup?7Deep_embedded_model/Embedding_District/embedding_lookup?4Deep_embedded_model/Embedding_State/embedding_lookup?;Deep_embedded_model/Embedding_Sub_District/embedding_lookup?1Deep_embedded_model/output/BiasAdd/ReadVariableOp?0Deep_embedded_model/output/MatMul/ReadVariableOp?
*Deep_embedded_model/Embedding_Cluster/CastCastinput_cluster*

DstT0*

SrcT0*'
_output_shapes
:??????????
6Deep_embedded_model/Embedding_Cluster/embedding_lookupResourceGather>deep_embedded_model_embedding_cluster_embedding_lookup_9822677.Deep_embedded_model/Embedding_Cluster/Cast:y:0*
Tindices0*Q
_classG
ECloc:@Deep_embedded_model/Embedding_Cluster/embedding_lookup/9822677*+
_output_shapes
:?????????*
dtype0?
?Deep_embedded_model/Embedding_Cluster/embedding_lookup/IdentityIdentity?Deep_embedded_model/Embedding_Cluster/embedding_lookup:output:0*
T0*Q
_classG
ECloc:@Deep_embedded_model/Embedding_Cluster/embedding_lookup/9822677*+
_output_shapes
:??????????
ADeep_embedded_model/Embedding_Cluster/embedding_lookup/Identity_1IdentityHDeep_embedded_model/Embedding_Cluster/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????~
(Deep_embedded_model/Embedding_State/CastCastinput_state*

DstT0*

SrcT0*'
_output_shapes
:??????????
4Deep_embedded_model/Embedding_State/embedding_lookupResourceGather<deep_embedded_model_embedding_state_embedding_lookup_9822683,Deep_embedded_model/Embedding_State/Cast:y:0*
Tindices0*O
_classE
CAloc:@Deep_embedded_model/Embedding_State/embedding_lookup/9822683*+
_output_shapes
:?????????*
dtype0?
=Deep_embedded_model/Embedding_State/embedding_lookup/IdentityIdentity=Deep_embedded_model/Embedding_State/embedding_lookup:output:0*
T0*O
_classE
CAloc:@Deep_embedded_model/Embedding_State/embedding_lookup/9822683*+
_output_shapes
:??????????
?Deep_embedded_model/Embedding_State/embedding_lookup/Identity_1IdentityFDeep_embedded_model/Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????~
(Deep_embedded_model/Embedding_Block/CastCastinput_block*

DstT0*

SrcT0*'
_output_shapes
:??????????
4Deep_embedded_model/Embedding_Block/embedding_lookupResourceGather<deep_embedded_model_embedding_block_embedding_lookup_9822689,Deep_embedded_model/Embedding_Block/Cast:y:0*
Tindices0*O
_classE
CAloc:@Deep_embedded_model/Embedding_Block/embedding_lookup/9822689*+
_output_shapes
:?????????*
dtype0?
=Deep_embedded_model/Embedding_Block/embedding_lookup/IdentityIdentity=Deep_embedded_model/Embedding_Block/embedding_lookup:output:0*
T0*O
_classE
CAloc:@Deep_embedded_model/Embedding_Block/embedding_lookup/9822689*+
_output_shapes
:??????????
?Deep_embedded_model/Embedding_Block/embedding_lookup/Identity_1IdentityFDeep_embedded_model/Embedding_Block/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????|
'Deep_embedded_model/Embedding_Crop/CastCast
input_crop*

DstT0*

SrcT0*'
_output_shapes
:??????????
3Deep_embedded_model/Embedding_Crop/embedding_lookupResourceGather;deep_embedded_model_embedding_crop_embedding_lookup_9822695+Deep_embedded_model/Embedding_Crop/Cast:y:0*
Tindices0*N
_classD
B@loc:@Deep_embedded_model/Embedding_Crop/embedding_lookup/9822695*+
_output_shapes
:?????????*
dtype0?
<Deep_embedded_model/Embedding_Crop/embedding_lookup/IdentityIdentity<Deep_embedded_model/Embedding_Crop/embedding_lookup:output:0*
T0*N
_classD
B@loc:@Deep_embedded_model/Embedding_Crop/embedding_lookup/9822695*+
_output_shapes
:??????????
>Deep_embedded_model/Embedding_Crop/embedding_lookup/Identity_1IdentityEDeep_embedded_model/Embedding_Crop/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
/Deep_embedded_model/Embedding_Sub_District/CastCastinput_sub_district*

DstT0*

SrcT0*'
_output_shapes
:??????????
;Deep_embedded_model/Embedding_Sub_District/embedding_lookupResourceGatherCdeep_embedded_model_embedding_sub_district_embedding_lookup_98227013Deep_embedded_model/Embedding_Sub_District/Cast:y:0*
Tindices0*V
_classL
JHloc:@Deep_embedded_model/Embedding_Sub_District/embedding_lookup/9822701*+
_output_shapes
:?????????*
dtype0?
DDeep_embedded_model/Embedding_Sub_District/embedding_lookup/IdentityIdentityDDeep_embedded_model/Embedding_Sub_District/embedding_lookup:output:0*
T0*V
_classL
JHloc:@Deep_embedded_model/Embedding_Sub_District/embedding_lookup/9822701*+
_output_shapes
:??????????
FDeep_embedded_model/Embedding_Sub_District/embedding_lookup/Identity_1IdentityMDeep_embedded_model/Embedding_Sub_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:??????????
+Deep_embedded_model/Embedding_District/CastCastinput_district*

DstT0*

SrcT0*'
_output_shapes
:??????????
7Deep_embedded_model/Embedding_District/embedding_lookupResourceGather?deep_embedded_model_embedding_district_embedding_lookup_9822707/Deep_embedded_model/Embedding_District/Cast:y:0*
Tindices0*R
_classH
FDloc:@Deep_embedded_model/Embedding_District/embedding_lookup/9822707*+
_output_shapes
:?????????*
dtype0?
@Deep_embedded_model/Embedding_District/embedding_lookup/IdentityIdentity@Deep_embedded_model/Embedding_District/embedding_lookup:output:0*
T0*R
_classH
FDloc:@Deep_embedded_model/Embedding_District/embedding_lookup/9822707*+
_output_shapes
:??????????
BDeep_embedded_model/Embedding_District/embedding_lookup/Identity_1IdentityIDeep_embedded_model/Embedding_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????{
*Deep_embedded_model/Flatten_District/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
,Deep_embedded_model/Flatten_District/ReshapeReshapeKDeep_embedded_model/Embedding_District/embedding_lookup/Identity_1:output:03Deep_embedded_model/Flatten_District/Const:output:0*
T0*'
_output_shapes
:?????????
.Deep_embedded_model/Flatten_Sub_District/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0Deep_embedded_model/Flatten_Sub_District/ReshapeReshapeODeep_embedded_model/Embedding_Sub_District/embedding_lookup/Identity_1:output:07Deep_embedded_model/Flatten_Sub_District/Const:output:0*
T0*'
_output_shapes
:?????????w
&Deep_embedded_model/Flatten_Crop/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
(Deep_embedded_model/Flatten_Crop/ReshapeReshapeGDeep_embedded_model/Embedding_Crop/embedding_lookup/Identity_1:output:0/Deep_embedded_model/Flatten_Crop/Const:output:0*
T0*'
_output_shapes
:?????????x
'Deep_embedded_model/Flatten_Block/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)Deep_embedded_model/Flatten_Block/ReshapeReshapeHDeep_embedded_model/Embedding_Block/embedding_lookup/Identity_1:output:00Deep_embedded_model/Flatten_Block/Const:output:0*
T0*'
_output_shapes
:?????????x
'Deep_embedded_model/Flatten_State/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)Deep_embedded_model/Flatten_State/ReshapeReshapeHDeep_embedded_model/Embedding_State/embedding_lookup/Identity_1:output:00Deep_embedded_model/Flatten_State/Const:output:0*
T0*'
_output_shapes
:?????????z
)Deep_embedded_model/Flatten_Cluster/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
+Deep_embedded_model/Flatten_Cluster/ReshapeReshapeJDeep_embedded_model/Embedding_Cluster/embedding_lookup/Identity_1:output:02Deep_embedded_model/Flatten_Cluster/Const:output:0*
T0*'
_output_shapes
:?????????k
)Deep_embedded_model/concatted/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
$Deep_embedded_model/concatted/concatConcatV25Deep_embedded_model/Flatten_District/Reshape:output:09Deep_embedded_model/Flatten_Sub_District/Reshape:output:01Deep_embedded_model/Flatten_Crop/Reshape:output:02Deep_embedded_model/Flatten_Block/Reshape:output:02Deep_embedded_model/Flatten_State/Reshape:output:04Deep_embedded_model/Flatten_Cluster/Reshape:output:0input_area_sown_hainput_area_insured_hainput_si_per_ha_inr_hainput_sum_insured_inrinput_indemnity_level2Deep_embedded_model/concatted/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????}?
0Deep_embedded_model/Dense0/MatMul/ReadVariableOpReadVariableOp9deep_embedded_model_dense0_matmul_readvariableop_resource*
_output_shapes

:}d*
dtype0?
!Deep_embedded_model/Dense0/MatMulMatMul-Deep_embedded_model/concatted/concat:output:08Deep_embedded_model/Dense0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
1Deep_embedded_model/Dense0/BiasAdd/ReadVariableOpReadVariableOp:deep_embedded_model_dense0_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
"Deep_embedded_model/Dense0/BiasAddBiasAdd+Deep_embedded_model/Dense0/MatMul:product:09Deep_embedded_model/Dense0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
%Deep_embedded_model/Dropout0/IdentityIdentity+Deep_embedded_model/Dense0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d?
0Deep_embedded_model/Dense1/MatMul/ReadVariableOpReadVariableOp9deep_embedded_model_dense1_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0?
!Deep_embedded_model/Dense1/MatMulMatMul.Deep_embedded_model/Dropout0/Identity:output:08Deep_embedded_model/Dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
1Deep_embedded_model/Dense1/BiasAdd/ReadVariableOpReadVariableOp:deep_embedded_model_dense1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
"Deep_embedded_model/Dense1/BiasAddBiasAdd+Deep_embedded_model/Dense1/MatMul:product:09Deep_embedded_model/Dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Deep_embedded_model/Dense1/ReluRelu+Deep_embedded_model/Dense1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
%Deep_embedded_model/Dropout1/IdentityIdentity-Deep_embedded_model/Dense1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0Deep_embedded_model/output/MatMul/ReadVariableOpReadVariableOp9deep_embedded_model_output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
!Deep_embedded_model/output/MatMulMatMul.Deep_embedded_model/Dropout1/Identity:output:08Deep_embedded_model/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
1Deep_embedded_model/output/BiasAdd/ReadVariableOpReadVariableOp:deep_embedded_model_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
"Deep_embedded_model/output/BiasAddBiasAdd+Deep_embedded_model/output/MatMul:product:09Deep_embedded_model/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
IdentityIdentity+Deep_embedded_model/output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp2^Deep_embedded_model/Dense0/BiasAdd/ReadVariableOp1^Deep_embedded_model/Dense0/MatMul/ReadVariableOp2^Deep_embedded_model/Dense1/BiasAdd/ReadVariableOp1^Deep_embedded_model/Dense1/MatMul/ReadVariableOp5^Deep_embedded_model/Embedding_Block/embedding_lookup7^Deep_embedded_model/Embedding_Cluster/embedding_lookup4^Deep_embedded_model/Embedding_Crop/embedding_lookup8^Deep_embedded_model/Embedding_District/embedding_lookup5^Deep_embedded_model/Embedding_State/embedding_lookup<^Deep_embedded_model/Embedding_Sub_District/embedding_lookup2^Deep_embedded_model/output/BiasAdd/ReadVariableOp1^Deep_embedded_model/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2f
1Deep_embedded_model/Dense0/BiasAdd/ReadVariableOp1Deep_embedded_model/Dense0/BiasAdd/ReadVariableOp2d
0Deep_embedded_model/Dense0/MatMul/ReadVariableOp0Deep_embedded_model/Dense0/MatMul/ReadVariableOp2f
1Deep_embedded_model/Dense1/BiasAdd/ReadVariableOp1Deep_embedded_model/Dense1/BiasAdd/ReadVariableOp2d
0Deep_embedded_model/Dense1/MatMul/ReadVariableOp0Deep_embedded_model/Dense1/MatMul/ReadVariableOp2l
4Deep_embedded_model/Embedding_Block/embedding_lookup4Deep_embedded_model/Embedding_Block/embedding_lookup2p
6Deep_embedded_model/Embedding_Cluster/embedding_lookup6Deep_embedded_model/Embedding_Cluster/embedding_lookup2j
3Deep_embedded_model/Embedding_Crop/embedding_lookup3Deep_embedded_model/Embedding_Crop/embedding_lookup2r
7Deep_embedded_model/Embedding_District/embedding_lookup7Deep_embedded_model/Embedding_District/embedding_lookup2l
4Deep_embedded_model/Embedding_State/embedding_lookup4Deep_embedded_model/Embedding_State/embedding_lookup2z
;Deep_embedded_model/Embedding_Sub_District/embedding_lookup;Deep_embedded_model/Embedding_Sub_District/embedding_lookup2f
1Deep_embedded_model/output/BiasAdd/ReadVariableOp1Deep_embedded_model/output/BiasAdd/ReadVariableOp2d
0Deep_embedded_model/output/MatMul/ReadVariableOp0Deep_embedded_model/output/MatMul/ReadVariableOp:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_Block:VR
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:WS
'
_output_shapes
:?????????
(
_user_specified_nameinput_District:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Sub_District:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_	[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:^
Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?
K
/__inference_Flatten_Block_layer_call_fn_9824826

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Flatten_Block_layer_call_and_return_conditional_losses_9822979`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_9825430
file_prefixA
.assignvariableop_embedding_district_embeddings:	?G
4assignvariableop_1_embedding_sub_district_embeddings:	?>
,assignvariableop_2_embedding_crop_embeddings:F@
-assignvariableop_3_embedding_block_embeddings:	?M?
-assignvariableop_4_embedding_state_embeddings:A
/assignvariableop_5_embedding_cluster_embeddings:2
 assignvariableop_6_dense0_kernel:}d,
assignvariableop_7_dense0_bias:d2
 assignvariableop_8_dense1_kernel:d2,
assignvariableop_9_dense1_bias:23
!assignvariableop_10_output_kernel:2-
assignvariableop_11_output_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: K
8assignvariableop_21_adam_embedding_district_embeddings_m:	?O
<assignvariableop_22_adam_embedding_sub_district_embeddings_m:	?F
4assignvariableop_23_adam_embedding_crop_embeddings_m:FH
5assignvariableop_24_adam_embedding_block_embeddings_m:	?MG
5assignvariableop_25_adam_embedding_state_embeddings_m:I
7assignvariableop_26_adam_embedding_cluster_embeddings_m::
(assignvariableop_27_adam_dense0_kernel_m:}d4
&assignvariableop_28_adam_dense0_bias_m:d:
(assignvariableop_29_adam_dense1_kernel_m:d24
&assignvariableop_30_adam_dense1_bias_m:2:
(assignvariableop_31_adam_output_kernel_m:24
&assignvariableop_32_adam_output_bias_m:K
8assignvariableop_33_adam_embedding_district_embeddings_v:	?O
<assignvariableop_34_adam_embedding_sub_district_embeddings_v:	?F
4assignvariableop_35_adam_embedding_crop_embeddings_v:FH
5assignvariableop_36_adam_embedding_block_embeddings_v:	?MG
5assignvariableop_37_adam_embedding_state_embeddings_v:I
7assignvariableop_38_adam_embedding_cluster_embeddings_v::
(assignvariableop_39_adam_dense0_kernel_v:}d4
&assignvariableop_40_adam_dense0_bias_v:d:
(assignvariableop_41_adam_dense1_kernel_v:d24
&assignvariableop_42_adam_dense1_bias_v:2:
(assignvariableop_43_adam_output_kernel_v:24
&assignvariableop_44_adam_output_bias_v:
identity_46??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-4/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-4/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-4/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp.assignvariableop_embedding_district_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp4assignvariableop_1_embedding_sub_district_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_embedding_crop_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp-assignvariableop_3_embedding_block_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp-assignvariableop_4_embedding_state_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp/assignvariableop_5_embedding_cluster_embeddingsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense0_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense0_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_output_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_output_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp8assignvariableop_21_adam_embedding_district_embeddings_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp<assignvariableop_22_adam_embedding_sub_district_embeddings_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_embedding_crop_embeddings_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp5assignvariableop_24_adam_embedding_block_embeddings_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp5assignvariableop_25_adam_embedding_state_embeddings_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp7assignvariableop_26_adam_embedding_cluster_embeddings_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dense0_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_dense0_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_dense1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_output_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_output_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp8assignvariableop_33_adam_embedding_district_embeddings_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp<assignvariableop_34_adam_embedding_sub_district_embeddings_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp4assignvariableop_35_adam_embedding_crop_embeddings_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp5assignvariableop_36_adam_embedding_block_embeddings_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp5assignvariableop_37_adam_embedding_state_embeddings_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp7assignvariableop_38_adam_embedding_cluster_embeddings_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_dense0_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_dense0_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_dense1_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_dense1_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_output_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_output_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
(__inference_Dense0_layer_call_fn_9824894

inputs
unknown:}d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dense0_layer_call_and_return_conditional_losses_9823025o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????}: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????}
 
_user_specified_nameinputs
?
?
3__inference_Embedding_Cluster_layer_call_fn_9824763

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_9822800s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_output_layer_call_and_return_conditional_losses_9823072

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
m
Q__inference_Flatten_Sub_District_layer_call_and_return_conditional_losses_9824810

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
J__inference_Flatten_State_layer_call_and_return_conditional_losses_9824843

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9824317
inputs_0_block
inputs_0_cluster
inputs_0_crop
inputs_0_district
inputs_0_state
inputs_0_sub_district
inputs_1_area_insured_ha
inputs_1_area_sown_ha
inputs_1_indemnity_level
inputs_1_si_per_ha_inr_ha
inputs_1_sum_insured_inr<
*embedding_cluster_embedding_lookup_9824156::
(embedding_state_embedding_lookup_9824162:;
(embedding_block_embedding_lookup_9824168:	?M9
'embedding_crop_embedding_lookup_9824174:FB
/embedding_sub_district_embedding_lookup_9824180:	?>
+embedding_district_embedding_lookup_9824186:	?7
%dense0_matmul_readvariableop_resource:}d4
&dense0_biasadd_readvariableop_resource:d7
%dense1_matmul_readvariableop_resource:d24
&dense1_biasadd_readvariableop_resource:27
%output_matmul_readvariableop_resource:24
&output_biasadd_readvariableop_resource:
identity??Dense0/BiasAdd/ReadVariableOp?Dense0/MatMul/ReadVariableOp?Dense1/BiasAdd/ReadVariableOp?Dense1/MatMul/ReadVariableOp? Embedding_Block/embedding_lookup?9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp?"Embedding_Cluster/embedding_lookup?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?Embedding_Crop/embedding_lookup?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?#Embedding_District/embedding_lookup?<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp??Embedding_District/embeddings/Regularizer/Square/ReadVariableOp? Embedding_State/embedding_lookup?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?'Embedding_Sub_District/embedding_lookup?@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp?CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpq
Embedding_Cluster/CastCastinputs_0_cluster*

DstT0*

SrcT0*'
_output_shapes
:??????????
"Embedding_Cluster/embedding_lookupResourceGather*embedding_cluster_embedding_lookup_9824156Embedding_Cluster/Cast:y:0*
Tindices0*=
_class3
1/loc:@Embedding_Cluster/embedding_lookup/9824156*+
_output_shapes
:?????????*
dtype0?
+Embedding_Cluster/embedding_lookup/IdentityIdentity+Embedding_Cluster/embedding_lookup:output:0*
T0*=
_class3
1/loc:@Embedding_Cluster/embedding_lookup/9824156*+
_output_shapes
:??????????
-Embedding_Cluster/embedding_lookup/Identity_1Identity4Embedding_Cluster/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????m
Embedding_State/CastCastinputs_0_state*

DstT0*

SrcT0*'
_output_shapes
:??????????
 Embedding_State/embedding_lookupResourceGather(embedding_state_embedding_lookup_9824162Embedding_State/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_State/embedding_lookup/9824162*+
_output_shapes
:?????????*
dtype0?
)Embedding_State/embedding_lookup/IdentityIdentity)Embedding_State/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_State/embedding_lookup/9824162*+
_output_shapes
:??????????
+Embedding_State/embedding_lookup/Identity_1Identity2Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????m
Embedding_Block/CastCastinputs_0_block*

DstT0*

SrcT0*'
_output_shapes
:??????????
 Embedding_Block/embedding_lookupResourceGather(embedding_block_embedding_lookup_9824168Embedding_Block/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/9824168*+
_output_shapes
:?????????*
dtype0?
)Embedding_Block/embedding_lookup/IdentityIdentity)Embedding_Block/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/9824168*+
_output_shapes
:??????????
+Embedding_Block/embedding_lookup/Identity_1Identity2Embedding_Block/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????k
Embedding_Crop/CastCastinputs_0_crop*

DstT0*

SrcT0*'
_output_shapes
:??????????
Embedding_Crop/embedding_lookupResourceGather'embedding_crop_embedding_lookup_9824174Embedding_Crop/Cast:y:0*
Tindices0*:
_class0
.,loc:@Embedding_Crop/embedding_lookup/9824174*+
_output_shapes
:?????????*
dtype0?
(Embedding_Crop/embedding_lookup/IdentityIdentity(Embedding_Crop/embedding_lookup:output:0*
T0*:
_class0
.,loc:@Embedding_Crop/embedding_lookup/9824174*+
_output_shapes
:??????????
*Embedding_Crop/embedding_lookup/Identity_1Identity1Embedding_Crop/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????{
Embedding_Sub_District/CastCastinputs_0_sub_district*

DstT0*

SrcT0*'
_output_shapes
:??????????
'Embedding_Sub_District/embedding_lookupResourceGather/embedding_sub_district_embedding_lookup_9824180Embedding_Sub_District/Cast:y:0*
Tindices0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/9824180*+
_output_shapes
:?????????*
dtype0?
0Embedding_Sub_District/embedding_lookup/IdentityIdentity0Embedding_Sub_District/embedding_lookup:output:0*
T0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/9824180*+
_output_shapes
:??????????
2Embedding_Sub_District/embedding_lookup/Identity_1Identity9Embedding_Sub_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????s
Embedding_District/CastCastinputs_0_district*

DstT0*

SrcT0*'
_output_shapes
:??????????
#Embedding_District/embedding_lookupResourceGather+embedding_district_embedding_lookup_9824186Embedding_District/Cast:y:0*
Tindices0*>
_class4
20loc:@Embedding_District/embedding_lookup/9824186*+
_output_shapes
:?????????*
dtype0?
,Embedding_District/embedding_lookup/IdentityIdentity,Embedding_District/embedding_lookup:output:0*
T0*>
_class4
20loc:@Embedding_District/embedding_lookup/9824186*+
_output_shapes
:??????????
.Embedding_District/embedding_lookup/Identity_1Identity5Embedding_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????g
Flatten_District/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_District/ReshapeReshape7Embedding_District/embedding_lookup/Identity_1:output:0Flatten_District/Const:output:0*
T0*'
_output_shapes
:?????????k
Flatten_Sub_District/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_Sub_District/ReshapeReshape;Embedding_Sub_District/embedding_lookup/Identity_1:output:0#Flatten_Sub_District/Const:output:0*
T0*'
_output_shapes
:?????????c
Flatten_Crop/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_Crop/ReshapeReshape3Embedding_Crop/embedding_lookup/Identity_1:output:0Flatten_Crop/Const:output:0*
T0*'
_output_shapes
:?????????d
Flatten_Block/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_Block/ReshapeReshape4Embedding_Block/embedding_lookup/Identity_1:output:0Flatten_Block/Const:output:0*
T0*'
_output_shapes
:?????????d
Flatten_State/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_State/ReshapeReshape4Embedding_State/embedding_lookup/Identity_1:output:0Flatten_State/Const:output:0*
T0*'
_output_shapes
:?????????f
Flatten_Cluster/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_Cluster/ReshapeReshape6Embedding_Cluster/embedding_lookup/Identity_1:output:0Flatten_Cluster/Const:output:0*
T0*'
_output_shapes
:?????????W
concatted/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatted/concatConcatV2!Flatten_District/Reshape:output:0%Flatten_Sub_District/Reshape:output:0Flatten_Crop/Reshape:output:0Flatten_Block/Reshape:output:0Flatten_State/Reshape:output:0 Flatten_Cluster/Reshape:output:0inputs_1_area_sown_hainputs_1_area_insured_hainputs_1_si_per_ha_inr_hainputs_1_sum_insured_inrinputs_1_indemnity_levelconcatted/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????}?
Dense0/MatMul/ReadVariableOpReadVariableOp%dense0_matmul_readvariableop_resource*
_output_shapes

:}d*
dtype0?
Dense0/MatMulMatMulconcatted/concat:output:0$Dense0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
Dense0/BiasAdd/ReadVariableOpReadVariableOp&dense0_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
Dense0/BiasAddBiasAddDense0/MatMul:product:0%Dense0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dh
Dropout0/IdentityIdentityDense0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d?
Dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype0?
Dense1/MatMulMatMulDropout0/Identity:output:0$Dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
Dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
Dense1/BiasAddBiasAddDense1/MatMul:product:0%Dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2^
Dense1/ReluReluDense1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2j
Dropout1/IdentityIdentityDense1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0?
output/MatMulMatMulDropout1/Identity:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_9824186*
_output_shapes
:	?*
dtype0?
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_9824186*
_output_shapes
:	?*
dtype0?
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_9824180*
_output_shapes
:	?*
dtype0?
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_9824180*
_output_shapes
:	?*
dtype0?
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp'embedding_crop_embedding_lookup_9824174*
_output_shapes

:F*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
)Embedding_Crop/embeddings/Regularizer/SumSum-Embedding_Crop/embeddings/Regularizer/Abs:y:06Embedding_Crop/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
)Embedding_Crop/embeddings/Regularizer/mulMul4Embedding_Crop/embeddings/Regularizer/mul/x:output:02Embedding_Crop/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
)Embedding_Crop/embeddings/Regularizer/addAddV24Embedding_Crop/embeddings/Regularizer/Const:output:0-Embedding_Crop/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp'embedding_crop_embedding_lookup_9824174*
_output_shapes

:F*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
+Embedding_Crop/embeddings/Regularizer/Sum_1Sum0Embedding_Crop/embeddings/Regularizer/Square:y:06Embedding_Crop/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: r
-Embedding_Crop/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
+Embedding_Crop/embeddings/Regularizer/mul_1Mul6Embedding_Crop/embeddings/Regularizer/mul_1/x:output:04Embedding_Crop/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
+Embedding_Crop/embeddings/Regularizer/add_1AddV2-Embedding_Crop/embeddings/Regularizer/add:z:0/Embedding_Crop/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_9824168*
_output_shapes
:	?M*
dtype0?
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_9824168*
_output_shapes
:	?M*
dtype0?
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_9824162*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_9824162*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp*embedding_cluster_embedding_lookup_9824156*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Cluster/embeddings/Regularizer/SumSum0Embedding_Cluster/embeddings/Regularizer/Abs:y:09Embedding_Cluster/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Cluster/embeddings/Regularizer/mulMul7Embedding_Cluster/embeddings/Regularizer/mul/x:output:05Embedding_Cluster/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
,Embedding_Cluster/embeddings/Regularizer/addAddV27Embedding_Cluster/embeddings/Regularizer/Const:output:00Embedding_Cluster/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp*embedding_cluster_embedding_lookup_9824156*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
.Embedding_Cluster/embeddings/Regularizer/Sum_1Sum3Embedding_Cluster/embeddings/Regularizer/Square:y:09Embedding_Cluster/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: u
0Embedding_Cluster/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
.Embedding_Cluster/embeddings/Regularizer/mul_1Mul9Embedding_Cluster/embeddings/Regularizer/mul_1/x:output:07Embedding_Cluster/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
.Embedding_Cluster/embeddings/Regularizer/add_1AddV20Embedding_Cluster/embeddings/Regularizer/add:z:02Embedding_Cluster/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: f
IdentityIdentityoutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????	
NoOpNoOp^Dense0/BiasAdd/ReadVariableOp^Dense0/MatMul/ReadVariableOp^Dense1/BiasAdd/ReadVariableOp^Dense1/MatMul/ReadVariableOp!^Embedding_Block/embedding_lookup:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp#^Embedding_Cluster/embedding_lookup<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp ^Embedding_Crop/embedding_lookup9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp$^Embedding_District/embedding_lookup=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp!^Embedding_State/embedding_lookup:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_Sub_District/embedding_lookupA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2>
Dense0/BiasAdd/ReadVariableOpDense0/BiasAdd/ReadVariableOp2<
Dense0/MatMul/ReadVariableOpDense0/MatMul/ReadVariableOp2>
Dense1/BiasAdd/ReadVariableOpDense1/BiasAdd/ReadVariableOp2<
Dense1/MatMul/ReadVariableOpDense1/MatMul/ReadVariableOp2D
 Embedding_Block/embedding_lookup Embedding_Block/embedding_lookup2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2H
"Embedding_Cluster/embedding_lookup"Embedding_Cluster/embedding_lookup2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2B
Embedding_Crop/embedding_lookupEmbedding_Crop/embedding_lookup2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2J
#Embedding_District/embedding_lookup#Embedding_District/embedding_lookup2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2D
 Embedding_State/embedding_lookup Embedding_State/embedding_lookup2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_Sub_District/embedding_lookup'Embedding_Sub_District/embedding_lookup2?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/Block:YU
'
_output_shapes
:?????????
*
_user_specified_nameinputs/0/Cluster:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/0/Crop:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/0/Sub_District:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Area_Insured_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/1/Area_Sown_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Indemnity_Level:b	^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/1/SI_Per_Ha_Inr_Ha:a
]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Sum_Insured_Inr
?"
?
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_9822916

inputs+
embedding_lookup_9822895:	?
identity??@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp?CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9822895Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9822895*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9822895*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9822895*
_output_shapes
:	?*
dtype0?
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9822895*
_output_shapes
:	?*
dtype0?
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOpA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
m
Q__inference_Flatten_Sub_District_layer_call_and_return_conditional_losses_9822963

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
K
/__inference_Flatten_State_layer_call_fn_9824837

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Flatten_State_layer_call_and_return_conditional_losses_9822987`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_Embedding_Sub_District_layer_call_fn_9824575

inputs
unknown:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_9822916s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
d
E__inference_Dropout1_layer_call_and_return_conditional_losses_9824978

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
h
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_9824854

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
O__inference_Embedding_District_layer_call_and_return_conditional_losses_9822945

inputs+
embedding_lookup_9822924:	?
identity??<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp??Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9822924Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9822924*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9822924*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9822924*
_output_shapes
:	?*
dtype0?
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9822924*
_output_shapes
:	?*
dtype0?
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
E__inference_Dropout0_layer_call_and_return_conditional_losses_9823036

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823927
input_block
input_cluster

input_crop
input_district
input_state
input_sub_district
input_area_insured_ha
input_area_sown_ha
input_indemnity_level
input_si_per_ha_inr_ha
input_sum_insured_inr+
embedding_cluster_9823794:)
embedding_state_9823797:*
embedding_block_9823800:	?M(
embedding_crop_9823803:F1
embedding_sub_district_9823806:	?-
embedding_district_9823809:	? 
dense0_9823819:}d
dense0_9823821:d 
dense1_9823825:d2
dense1_9823827:2 
output_9823831:2
output_9823833:
identity??Dense0/StatefulPartitionedCall?Dense1/StatefulPartitionedCall? Dropout0/StatefulPartitionedCall? Dropout1/StatefulPartitionedCall?'Embedding_Block/StatefulPartitionedCall?9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp?)Embedding_Cluster/StatefulPartitionedCall?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?&Embedding_Crop/StatefulPartitionedCall?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?*Embedding_District/StatefulPartitionedCall?<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp??Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?.Embedding_Sub_District/StatefulPartitionedCall?@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp?CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
)Embedding_Cluster/StatefulPartitionedCallStatefulPartitionedCallinput_clusterembedding_cluster_9823794*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_9822800?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinput_stateembedding_state_9823797*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_9822829?
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinput_blockembedding_block_9823800*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_9822858?
&Embedding_Crop/StatefulPartitionedCallStatefulPartitionedCall
input_cropembedding_crop_9823803*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_9822887?
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinput_sub_districtembedding_sub_district_9823806*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_9822916?
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinput_districtembedding_district_9823809*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_9822945?
 Flatten_District/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_Flatten_District_layer_call_and_return_conditional_losses_9822955?
$Flatten_Sub_District/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_Flatten_Sub_District_layer_call_and_return_conditional_losses_9822963?
Flatten_Crop/PartitionedCallPartitionedCall/Embedding_Crop/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_9822971?
Flatten_Block/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Flatten_Block_layer_call_and_return_conditional_losses_9822979?
Flatten_State/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Flatten_State_layer_call_and_return_conditional_losses_9822987?
Flatten_Cluster/PartitionedCallPartitionedCall2Embedding_Cluster/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_9822995?
concatted/PartitionedCallPartitionedCall)Flatten_District/PartitionedCall:output:0-Flatten_Sub_District/PartitionedCall:output:0%Flatten_Crop/PartitionedCall:output:0&Flatten_Block/PartitionedCall:output:0&Flatten_State/PartitionedCall:output:0(Flatten_Cluster/PartitionedCall:output:0input_area_sown_hainput_area_insured_hainput_si_per_ha_inr_hainput_sum_insured_inrinput_indemnity_level*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????}* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatted_layer_call_and_return_conditional_losses_9823013?
Dense0/StatefulPartitionedCallStatefulPartitionedCall"concatted/PartitionedCall:output:0dense0_9823819dense0_9823821*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dense0_layer_call_and_return_conditional_losses_9823025?
 Dropout0/StatefulPartitionedCallStatefulPartitionedCall'Dense0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout0_layer_call_and_return_conditional_losses_9823259?
Dense1/StatefulPartitionedCallStatefulPartitionedCall)Dropout0/StatefulPartitionedCall:output:0dense1_9823825dense1_9823827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dense1_layer_call_and_return_conditional_losses_9823049?
 Dropout1/StatefulPartitionedCallStatefulPartitionedCall'Dense1/StatefulPartitionedCall:output:0!^Dropout0/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout1_layer_call_and_return_conditional_losses_9823226?
output/StatefulPartitionedCallStatefulPartitionedCall)Dropout1/StatefulPartitionedCall:output:0output_9823831output_9823833*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_9823072t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_9823809*
_output_shapes
:	?*
dtype0?
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_9823809*
_output_shapes
:	?*
dtype0?
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_9823806*
_output_shapes
:	?*
dtype0?
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_9823806*
_output_shapes
:	?*
dtype0?
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_crop_9823803*
_output_shapes

:F*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
)Embedding_Crop/embeddings/Regularizer/SumSum-Embedding_Crop/embeddings/Regularizer/Abs:y:06Embedding_Crop/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
)Embedding_Crop/embeddings/Regularizer/mulMul4Embedding_Crop/embeddings/Regularizer/mul/x:output:02Embedding_Crop/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
)Embedding_Crop/embeddings/Regularizer/addAddV24Embedding_Crop/embeddings/Regularizer/Const:output:0-Embedding_Crop/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_crop_9823803*
_output_shapes

:F*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
+Embedding_Crop/embeddings/Regularizer/Sum_1Sum0Embedding_Crop/embeddings/Regularizer/Square:y:06Embedding_Crop/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: r
-Embedding_Crop/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
+Embedding_Crop/embeddings/Regularizer/mul_1Mul6Embedding_Crop/embeddings/Regularizer/mul_1/x:output:04Embedding_Crop/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
+Embedding_Crop/embeddings/Regularizer/add_1AddV2-Embedding_Crop/embeddings/Regularizer/add:z:0/Embedding_Crop/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_9823800*
_output_shapes
:	?M*
dtype0?
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_9823800*
_output_shapes
:	?M*
dtype0?
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_9823797*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_9823797*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_cluster_9823794*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Cluster/embeddings/Regularizer/SumSum0Embedding_Cluster/embeddings/Regularizer/Abs:y:09Embedding_Cluster/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Cluster/embeddings/Regularizer/mulMul7Embedding_Cluster/embeddings/Regularizer/mul/x:output:05Embedding_Cluster/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
,Embedding_Cluster/embeddings/Regularizer/addAddV27Embedding_Cluster/embeddings/Regularizer/Const:output:00Embedding_Cluster/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_cluster_9823794*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
.Embedding_Cluster/embeddings/Regularizer/Sum_1Sum3Embedding_Cluster/embeddings/Regularizer/Square:y:09Embedding_Cluster/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: u
0Embedding_Cluster/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
.Embedding_Cluster/embeddings/Regularizer/mul_1Mul9Embedding_Cluster/embeddings/Regularizer/mul_1/x:output:07Embedding_Cluster/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
.Embedding_Cluster/embeddings/Regularizer/add_1AddV20Embedding_Cluster/embeddings/Regularizer/add:z:02Embedding_Cluster/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????	
NoOpNoOp^Dense0/StatefulPartitionedCall^Dense1/StatefulPartitionedCall!^Dropout0/StatefulPartitionedCall!^Dropout1/StatefulPartitionedCall(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp*^Embedding_Cluster/StatefulPartitionedCall<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp'^Embedding_Crop/StatefulPartitionedCall9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2D
 Dropout0/StatefulPartitionedCall Dropout0/StatefulPartitionedCall2D
 Dropout1/StatefulPartitionedCall Dropout1/StatefulPartitionedCall2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2V
)Embedding_Cluster/StatefulPartitionedCall)Embedding_Cluster/StatefulPartitionedCall2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2P
&Embedding_Crop/StatefulPartitionedCall&Embedding_Crop/StatefulPartitionedCall2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_Block:VR
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:WS
'
_output_shapes
:?????????
(
_user_specified_nameinput_District:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Sub_District:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_	[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:^
Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?
?
0__inference_Embedding_Crop_layer_call_fn_9824622

inputs
unknown:F
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_9822887s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
C__inference_Dense1_layer_call_and_return_conditional_losses_9824951

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
L__inference_Embedding_State_layer_call_and_return_conditional_losses_9822829

inputs*
embedding_lookup_9822808:
identity??9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9822808Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9822808*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9822808*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9822808*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9822808*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
4__inference_Embedding_District_layer_call_fn_9824528

inputs
unknown:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_9822945s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
5__inference_Deep_embedded_model_layer_call_fn_9824142
inputs_0_block
inputs_0_cluster
inputs_0_crop
inputs_0_district
inputs_0_state
inputs_0_sub_district
inputs_1_area_insured_ha
inputs_1_area_sown_ha
inputs_1_indemnity_level
inputs_1_si_per_ha_inr_ha
inputs_1_sum_insured_inr
unknown:
	unknown_0:
	unknown_1:	?M
	unknown_2:F
	unknown_3:	?
	unknown_4:	?
	unknown_5:}d
	unknown_6:d
	unknown_7:d2
	unknown_8:2
	unknown_9:2

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0_blockinputs_0_clusterinputs_0_cropinputs_0_districtinputs_0_stateinputs_0_sub_districtinputs_1_area_insured_hainputs_1_area_sown_hainputs_1_indemnity_levelinputs_1_si_per_ha_inr_hainputs_1_sum_insured_inrunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823569o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/Block:YU
'
_output_shapes
:?????????
*
_user_specified_nameinputs/0/Cluster:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/0/Crop:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/0/Sub_District:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Area_Insured_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/1/Area_Sown_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Indemnity_Level:b	^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/1/SI_Per_Ha_Inr_Ha:a
]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Sum_Insured_Inr
?
?
__inference_loss_fn_1_9825037\
Iembedding_sub_district_embeddings_regularizer_abs_readvariableop_resource:	?
identity??@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp?CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpx
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpIembedding_sub_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	?*
dtype0?
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpIembedding_sub_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	?*
dtype0?
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: u
IdentityIdentity7Embedding_Sub_District/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOpA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_0_9825017X
Eembedding_district_embeddings_regularizer_abs_readvariableop_resource:	?
identity??<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp??Embedding_District/embeddings/Regularizer/Square/ReadVariableOpt
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpEembedding_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	?*
dtype0?
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpEembedding_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	?*
dtype0?
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
IdentityIdentity3Embedding_District/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp
?
?
%__inference_signature_wrapper_9824064
input_area_insured_ha
input_area_sown_ha
input_block
input_cluster

input_crop
input_district
input_indemnity_level
input_si_per_ha_inr_ha
input_state
input_sub_district
input_sum_insured_inr
unknown:
	unknown_0:
	unknown_1:	?M
	unknown_2:F
	unknown_3:	?
	unknown_4:	?
	unknown_5:}d
	unknown_6:d
	unknown_7:d2
	unknown_8:2
	unknown_9:2

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_blockinput_cluster
input_cropinput_districtinput_stateinput_sub_districtinput_area_insured_hainput_area_sown_hainput_indemnity_levelinput_si_per_ha_inr_hainput_sum_insured_inrunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_9822748o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_Block:VR
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:WS
'
_output_shapes
:?????????
(
_user_specified_nameinput_District:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:[	W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Sub_District:^
Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?
?
F__inference_concatted_layer_call_and_return_conditional_losses_9824885
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????}W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????}"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:?????????
#
_user_specified_name	inputs/10
?
?
5__inference_Deep_embedded_model_layer_call_fn_9824103
inputs_0_block
inputs_0_cluster
inputs_0_crop
inputs_0_district
inputs_0_state
inputs_0_sub_district
inputs_1_area_insured_ha
inputs_1_area_sown_ha
inputs_1_indemnity_level
inputs_1_si_per_ha_inr_ha
inputs_1_sum_insured_inr
unknown:
	unknown_0:
	unknown_1:	?M
	unknown_2:F
	unknown_3:	?
	unknown_4:	?
	unknown_5:}d
	unknown_6:d
	unknown_7:d2
	unknown_8:2
	unknown_9:2

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0_blockinputs_0_clusterinputs_0_cropinputs_0_districtinputs_0_stateinputs_0_sub_districtinputs_1_area_insured_hainputs_1_area_sown_hainputs_1_indemnity_levelinputs_1_si_per_ha_inr_hainputs_1_sum_insured_inrunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823169o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/Block:YU
'
_output_shapes
:?????????
*
_user_specified_nameinputs/0/Cluster:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/0/Crop:ZV
'
_output_shapes
:?????????
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/0/Sub_District:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Area_Insured_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/1/Area_Sown_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Indemnity_Level:b	^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/1/SI_Per_Ha_Inr_Ha:a
]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Sum_Insured_Inr
??
?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823569

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10+
embedding_cluster_9823436:)
embedding_state_9823439:*
embedding_block_9823442:	?M(
embedding_crop_9823445:F1
embedding_sub_district_9823448:	?-
embedding_district_9823451:	? 
dense0_9823461:}d
dense0_9823463:d 
dense1_9823467:d2
dense1_9823469:2 
output_9823473:2
output_9823475:
identity??Dense0/StatefulPartitionedCall?Dense1/StatefulPartitionedCall? Dropout0/StatefulPartitionedCall? Dropout1/StatefulPartitionedCall?'Embedding_Block/StatefulPartitionedCall?9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp?)Embedding_Cluster/StatefulPartitionedCall?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?&Embedding_Crop/StatefulPartitionedCall?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?*Embedding_District/StatefulPartitionedCall?<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp??Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?.Embedding_Sub_District/StatefulPartitionedCall?@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp?CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
)Embedding_Cluster/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_cluster_9823436*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_9822800?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinputs_4embedding_state_9823439*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_9822829?
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_block_9823442*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_9822858?
&Embedding_Crop/StatefulPartitionedCallStatefulPartitionedCallinputs_2embedding_crop_9823445*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_9822887?
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinputs_5embedding_sub_district_9823448*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_9822916?
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinputs_3embedding_district_9823451*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_9822945?
 Flatten_District/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_Flatten_District_layer_call_and_return_conditional_losses_9822955?
$Flatten_Sub_District/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_Flatten_Sub_District_layer_call_and_return_conditional_losses_9822963?
Flatten_Crop/PartitionedCallPartitionedCall/Embedding_Crop/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_9822971?
Flatten_Block/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Flatten_Block_layer_call_and_return_conditional_losses_9822979?
Flatten_State/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_Flatten_State_layer_call_and_return_conditional_losses_9822987?
Flatten_Cluster/PartitionedCallPartitionedCall2Embedding_Cluster/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_9822995?
concatted/PartitionedCallPartitionedCall)Flatten_District/PartitionedCall:output:0-Flatten_Sub_District/PartitionedCall:output:0%Flatten_Crop/PartitionedCall:output:0&Flatten_Block/PartitionedCall:output:0&Flatten_State/PartitionedCall:output:0(Flatten_Cluster/PartitionedCall:output:0inputs_7inputs_6inputs_9	inputs_10inputs_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????}* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatted_layer_call_and_return_conditional_losses_9823013?
Dense0/StatefulPartitionedCallStatefulPartitionedCall"concatted/PartitionedCall:output:0dense0_9823461dense0_9823463*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dense0_layer_call_and_return_conditional_losses_9823025?
 Dropout0/StatefulPartitionedCallStatefulPartitionedCall'Dense0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout0_layer_call_and_return_conditional_losses_9823259?
Dense1/StatefulPartitionedCallStatefulPartitionedCall)Dropout0/StatefulPartitionedCall:output:0dense1_9823467dense1_9823469*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_Dense1_layer_call_and_return_conditional_losses_9823049?
 Dropout1/StatefulPartitionedCallStatefulPartitionedCall'Dense1/StatefulPartitionedCall:output:0!^Dropout0/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout1_layer_call_and_return_conditional_losses_9823226?
output/StatefulPartitionedCallStatefulPartitionedCall)Dropout1/StatefulPartitionedCall:output:0output_9823473output_9823475*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_9823072t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_9823451*
_output_shapes
:	?*
dtype0?
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_9823451*
_output_shapes
:	?*
dtype0?
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_9823448*
_output_shapes
:	?*
dtype0?
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_9823448*
_output_shapes
:	?*
dtype0?
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_crop_9823445*
_output_shapes

:F*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
)Embedding_Crop/embeddings/Regularizer/SumSum-Embedding_Crop/embeddings/Regularizer/Abs:y:06Embedding_Crop/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
)Embedding_Crop/embeddings/Regularizer/mulMul4Embedding_Crop/embeddings/Regularizer/mul/x:output:02Embedding_Crop/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
)Embedding_Crop/embeddings/Regularizer/addAddV24Embedding_Crop/embeddings/Regularizer/Const:output:0-Embedding_Crop/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_crop_9823445*
_output_shapes

:F*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
+Embedding_Crop/embeddings/Regularizer/Sum_1Sum0Embedding_Crop/embeddings/Regularizer/Square:y:06Embedding_Crop/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: r
-Embedding_Crop/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
+Embedding_Crop/embeddings/Regularizer/mul_1Mul6Embedding_Crop/embeddings/Regularizer/mul_1/x:output:04Embedding_Crop/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
+Embedding_Crop/embeddings/Regularizer/add_1AddV2-Embedding_Crop/embeddings/Regularizer/add:z:0/Embedding_Crop/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_9823442*
_output_shapes
:	?M*
dtype0?
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_9823442*
_output_shapes
:	?M*
dtype0?
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?M
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_9823439*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_9823439*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_cluster_9823436*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Cluster/embeddings/Regularizer/SumSum0Embedding_Cluster/embeddings/Regularizer/Abs:y:09Embedding_Cluster/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Cluster/embeddings/Regularizer/mulMul7Embedding_Cluster/embeddings/Regularizer/mul/x:output:05Embedding_Cluster/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
,Embedding_Cluster/embeddings/Regularizer/addAddV27Embedding_Cluster/embeddings/Regularizer/Const:output:00Embedding_Cluster/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_cluster_9823436*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
.Embedding_Cluster/embeddings/Regularizer/Sum_1Sum3Embedding_Cluster/embeddings/Regularizer/Square:y:09Embedding_Cluster/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: u
0Embedding_Cluster/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
.Embedding_Cluster/embeddings/Regularizer/mul_1Mul9Embedding_Cluster/embeddings/Regularizer/mul_1/x:output:07Embedding_Cluster/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
.Embedding_Cluster/embeddings/Regularizer/add_1AddV20Embedding_Cluster/embeddings/Regularizer/add:z:02Embedding_Cluster/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????	
NoOpNoOp^Dense0/StatefulPartitionedCall^Dense1/StatefulPartitionedCall!^Dropout0/StatefulPartitionedCall!^Dropout1/StatefulPartitionedCall(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp*^Embedding_Cluster/StatefulPartitionedCall<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp'^Embedding_Crop/StatefulPartitionedCall9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2D
 Dropout0/StatefulPartitionedCall Dropout0/StatefulPartitionedCall2D
 Dropout1/StatefulPartitionedCall Dropout1/StatefulPartitionedCall2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2V
)Embedding_Cluster/StatefulPartitionedCall)Embedding_Cluster/StatefulPartitionedCall2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2P
&Embedding_Crop/StatefulPartitionedCall&Embedding_Crop/StatefulPartitionedCall2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:O	K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:O
K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_Dropout1_layer_call_fn_9824956

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout1_layer_call_and_return_conditional_losses_9823060`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
f
J__inference_Flatten_State_layer_call_and_return_conditional_losses_9822987

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
O__inference_Embedding_District_layer_call_and_return_conditional_losses_9824553

inputs+
embedding_lookup_9824532:	?
identity??<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp??Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9824532Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9824532*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9824532*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9824532*
_output_shapes
:	?*
dtype0?
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9824532*
_output_shapes
:	?*
dtype0?
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2?
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
J
.__inference_Flatten_Crop_layer_call_fn_9824815

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_9822971`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
5__inference_Deep_embedded_model_layer_call_fn_9823196
input_block
input_cluster

input_crop
input_district
input_state
input_sub_district
input_area_insured_ha
input_area_sown_ha
input_indemnity_level
input_si_per_ha_inr_ha
input_sum_insured_inr
unknown:
	unknown_0:
	unknown_1:	?M
	unknown_2:F
	unknown_3:	?
	unknown_4:	?
	unknown_5:}d
	unknown_6:d
	unknown_7:d2
	unknown_8:2
	unknown_9:2

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_blockinput_cluster
input_cropinput_districtinput_stateinput_sub_districtinput_area_insured_hainput_area_sown_hainput_indemnity_levelinput_si_per_ha_inr_hainput_sum_insured_inrunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823169o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_Block:VR
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:WS
'
_output_shapes
:?????????
(
_user_specified_nameinput_District:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Sub_District:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_	[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:^
Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?
?
L__inference_Embedding_State_layer_call_and_return_conditional_losses_9824741

inputs*
embedding_lookup_9824720:
identity??9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9824720Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9824720*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9824720*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9824720*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9824720*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_9822800

inputs*
embedding_lookup_9822779:
identity??;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9822779Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9822779*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9822779*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????s
.Embedding_Cluster/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9822779*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Cluster/embeddings/Regularizer/SumSum0Embedding_Cluster/embeddings/Regularizer/Abs:y:09Embedding_Cluster/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Cluster/embeddings/Regularizer/mulMul7Embedding_Cluster/embeddings/Regularizer/mul/x:output:05Embedding_Cluster/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
,Embedding_Cluster/embeddings/Regularizer/addAddV27Embedding_Cluster/embeddings/Regularizer/Const:output:00Embedding_Cluster/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9822779*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
.Embedding_Cluster/embeddings/Regularizer/Sum_1Sum3Embedding_Cluster/embeddings/Regularizer/Square:y:09Embedding_Cluster/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: u
0Embedding_Cluster/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
.Embedding_Cluster/embeddings/Regularizer/mul_1Mul9Embedding_Cluster/embeddings/Regularizer/mul_1/x:output:07Embedding_Cluster/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
.Embedding_Cluster/embeddings/Regularizer/add_1AddV20Embedding_Cluster/embeddings/Regularizer/add:z:02Embedding_Cluster/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_Dense0_layer_call_and_return_conditional_losses_9823025

inputs0
matmul_readvariableop_resource:}d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:}d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????}: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????}
 
_user_specified_nameinputs
?	
d
E__inference_Dropout0_layer_call_and_return_conditional_losses_9824931

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????dC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????do
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????di
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????dY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
C__inference_Dense1_layer_call_and_return_conditional_losses_9823049

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
F
*__inference_Dropout0_layer_call_fn_9824909

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout0_layer_call_and_return_conditional_losses_9823036`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?"
?
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_9824600

inputs+
embedding_lookup_9824579:	?
identity??@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp?CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_9824579Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/9824579*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/9824579*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_9824579*
_output_shapes
:	?*
dtype0?
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_9824579*
_output_shapes
:	?*
dtype0?
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOpA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2?
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2?
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
R
6__inference_Flatten_Sub_District_layer_call_fn_9824804

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_Flatten_Sub_District_layer_call_and_return_conditional_losses_9822963`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
1__inference_Embedding_State_layer_call_fn_9824716

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_9822829s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_5_9825117V
Dembedding_cluster_embeddings_regularizer_abs_readvariableop_resource:
identity??;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOps
.Embedding_Cluster/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpDembedding_cluster_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_Cluster/embeddings/Regularizer/SumSum0Embedding_Cluster/embeddings/Regularizer/Abs:y:09Embedding_Cluster/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: s
.Embedding_Cluster/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_Cluster/embeddings/Regularizer/mulMul7Embedding_Cluster/embeddings/Regularizer/mul/x:output:05Embedding_Cluster/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
,Embedding_Cluster/embeddings/Regularizer/addAddV27Embedding_Cluster/embeddings/Regularizer/Const:output:00Embedding_Cluster/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpDembedding_cluster_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
0Embedding_Cluster/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
.Embedding_Cluster/embeddings/Regularizer/Sum_1Sum3Embedding_Cluster/embeddings/Regularizer/Square:y:09Embedding_Cluster/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: u
0Embedding_Cluster/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
.Embedding_Cluster/embeddings/Regularizer/mul_1Mul9Embedding_Cluster/embeddings/Regularizer/mul_1/x:output:07Embedding_Cluster/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
.Embedding_Cluster/embeddings/Regularizer/add_1AddV20Embedding_Cluster/embeddings/Regularizer/add:z:02Embedding_Cluster/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: p
IdentityIdentity2Embedding_Cluster/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp
?
f
J__inference_Flatten_Block_layer_call_and_return_conditional_losses_9822979

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
*__inference_Dropout0_layer_call_fn_9824914

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_Dropout0_layer_call_and_return_conditional_losses_9823259o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
d
E__inference_Dropout1_layer_call_and_return_conditional_losses_9823226

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????2*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
e
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_9824821

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
i
M__inference_Flatten_District_layer_call_and_return_conditional_losses_9824799

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
1__inference_Embedding_Block_layer_call_fn_9824669

inputs
unknown:	?M
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_9822858s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
h
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_9822995

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_9825057S
Aembedding_crop_embeddings_regularizer_abs_readvariableop_resource:F
identity??8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpp
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpAembedding_crop_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:F*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
)Embedding_Crop/embeddings/Regularizer/SumSum-Embedding_Crop/embeddings/Regularizer/Abs:y:06Embedding_Crop/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: p
+Embedding_Crop/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
)Embedding_Crop/embeddings/Regularizer/mulMul4Embedding_Crop/embeddings/Regularizer/mul/x:output:02Embedding_Crop/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
)Embedding_Crop/embeddings/Regularizer/addAddV24Embedding_Crop/embeddings/Regularizer/Const:output:0-Embedding_Crop/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpAembedding_crop_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:F*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:F~
-Embedding_Crop/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
+Embedding_Crop/embeddings/Regularizer/Sum_1Sum0Embedding_Crop/embeddings/Regularizer/Square:y:06Embedding_Crop/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: r
-Embedding_Crop/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
+Embedding_Crop/embeddings/Regularizer/mul_1Mul6Embedding_Crop/embeddings/Regularizer/mul_1/x:output:04Embedding_Crop/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
+Embedding_Crop/embeddings/Regularizer/add_1AddV2-Embedding_Crop/embeddings/Regularizer/add:z:0/Embedding_Crop/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: m
IdentityIdentity/Embedding_Crop/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp
?
f
J__inference_Flatten_Block_layer_call_and_return_conditional_losses_9824832

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_Dense0_layer_call_and_return_conditional_losses_9824904

inputs0
matmul_readvariableop_resource:}d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:}d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????}: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????}
 
_user_specified_nameinputs
?
?
__inference_loss_fn_4_9825097T
Bembedding_state_embeddings_regularizer_abs_readvariableop_resource:
identity??9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpq
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpBembedding_state_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpBembedding_state_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: n
IdentityIdentity0Embedding_State/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp
?
e
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_9822971

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
E__inference_Dropout1_layer_call_and_return_conditional_losses_9824966

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
input_Area_Insured_Ha>
'serving_default_input_Area_Insured_Ha:0?????????
Q
input_Area_Sown_Ha;
$serving_default_input_Area_Sown_Ha:0?????????
C
input_Block4
serving_default_input_Block:0?????????
G
input_Cluster6
serving_default_input_Cluster:0?????????
A

input_Crop3
serving_default_input_Crop:0?????????
I
input_District7
 serving_default_input_District:0?????????
W
input_Indemnity_Level>
'serving_default_input_Indemnity_Level:0?????????
Y
input_SI_Per_Ha_Inr_Ha?
(serving_default_input_SI_Per_Ha_Inr_Ha:0?????????
C
input_State4
serving_default_input_State:0?????????
Q
input_Sub_District;
$serving_default_input_Sub_District:0?????????
W
input_Sum_Insured_Inr>
'serving_default_input_Sum_Insured_Inr:0?????????:
output0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer_with_weights-1
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer_with_weights-6
layer-24
layer-25
layer_with_weights-7
layer-26
layer-27
layer_with_weights-8
layer-28
	optimizer
	variables
 trainable_variables
!regularization_losses
"	keras_api
#
signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?
$
embeddings
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
)
embeddings
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
.
embeddings
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
3
embeddings
4	variables
5trainable_variables
6regularization_losses
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
8
embeddings
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
=
embeddings
>	variables
?trainable_variables
@regularization_losses
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
d	variables
etrainable_variables
fregularization_losses
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

hkernel
ibias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
n	variables
otrainable_variables
pregularization_losses
q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

rkernel
sbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
xiter

ybeta_1

zbeta_2
	{decay
|learning_rate$m?)m?.m?3m?8m?=m?^m?_m?hm?im?rm?sm?$v?)v?.v?3v?8v?=v?^v?_v?hv?iv?rv?sv?"
	optimizer
v
$0
)1
.2
33
84
=5
^6
_7
h8
i9
r10
s11"
trackable_list_wrapper
v
$0
)1
.2
33
84
=5
^6
_7
h8
i9
r10
s11"
trackable_list_wrapper
P
?0
?1
?2
?3
?4
?5"
trackable_list_wrapper
?
}non_trainable_variables

~layers
metrics
 ?layer_regularization_losses
?layer_metrics
	variables
 trainable_variables
!regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
0:.	?2Embedding_District/embeddings
'
$0"
trackable_list_wrapper
'
$0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
%	variables
&trainable_variables
'regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2	?2!Embedding_Sub_District/embeddings
'
)0"
trackable_list_wrapper
'
)0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
*	variables
+trainable_variables
,regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)F2Embedding_Crop/embeddings
'
.0"
trackable_list_wrapper
'
.0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+	?M2Embedding_Block/embeddings
'
30"
trackable_list_wrapper
'
30"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*2Embedding_State/embeddings
'
80"
trackable_list_wrapper
'
80"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
9	variables
:trainable_variables
;regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,2Embedding_Cluster/embeddings
'
=0"
trackable_list_wrapper
'
=0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Z	variables
[trainable_variables
\regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:}d2Dense0/kernel
:d2Dense0/bias
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
`	variables
atrainable_variables
bregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:d22Dense1/kernel
:22Dense1/bias
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
j	variables
ktrainable_variables
lregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
n	variables
otrainable_variables
pregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:22output/kernel
:2output/bias
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
t	variables
utrainable_variables
vregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
5:3	?2$Adam/Embedding_District/embeddings/m
9:7	?2(Adam/Embedding_Sub_District/embeddings/m
0:.F2 Adam/Embedding_Crop/embeddings/m
2:0	?M2!Adam/Embedding_Block/embeddings/m
1:/2!Adam/Embedding_State/embeddings/m
3:12#Adam/Embedding_Cluster/embeddings/m
$:"}d2Adam/Dense0/kernel/m
:d2Adam/Dense0/bias/m
$:"d22Adam/Dense1/kernel/m
:22Adam/Dense1/bias/m
$:"22Adam/output/kernel/m
:2Adam/output/bias/m
5:3	?2$Adam/Embedding_District/embeddings/v
9:7	?2(Adam/Embedding_Sub_District/embeddings/v
0:.F2 Adam/Embedding_Crop/embeddings/v
2:0	?M2!Adam/Embedding_Block/embeddings/v
1:/2!Adam/Embedding_State/embeddings/v
3:12#Adam/Embedding_Cluster/embeddings/v
$:"}d2Adam/Dense0/kernel/v
:d2Adam/Dense0/bias/v
$:"d22Adam/Dense1/kernel/v
:22Adam/Dense1/bias/v
$:"22Adam/output/kernel/v
:2Adam/output/bias/v
?2?
5__inference_Deep_embedded_model_layer_call_fn_9823196
5__inference_Deep_embedded_model_layer_call_fn_9824103
5__inference_Deep_embedded_model_layer_call_fn_9824142
5__inference_Deep_embedded_model_layer_call_fn_9823635?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9824317
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9824506
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823781
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823927?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_9822748input_Blockinput_Cluster
input_Cropinput_Districtinput_Stateinput_Sub_Districtinput_Area_Insured_Hainput_Area_Sown_Hainput_Indemnity_Levelinput_SI_Per_Ha_Inr_Hainput_Sum_Insured_Inr"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_Embedding_District_layer_call_fn_9824528?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_Embedding_District_layer_call_and_return_conditional_losses_9824553?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_Embedding_Sub_District_layer_call_fn_9824575?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_9824600?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_Embedding_Crop_layer_call_fn_9824622?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_9824647?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_Embedding_Block_layer_call_fn_9824669?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_9824694?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_Embedding_State_layer_call_fn_9824716?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_Embedding_State_layer_call_and_return_conditional_losses_9824741?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_Embedding_Cluster_layer_call_fn_9824763?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_9824788?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_Flatten_District_layer_call_fn_9824793?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_Flatten_District_layer_call_and_return_conditional_losses_9824799?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
6__inference_Flatten_Sub_District_layer_call_fn_9824804?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Q__inference_Flatten_Sub_District_layer_call_and_return_conditional_losses_9824810?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_Flatten_Crop_layer_call_fn_9824815?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_9824821?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_Flatten_Block_layer_call_fn_9824826?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_Flatten_Block_layer_call_and_return_conditional_losses_9824832?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_Flatten_State_layer_call_fn_9824837?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_Flatten_State_layer_call_and_return_conditional_losses_9824843?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_Flatten_Cluster_layer_call_fn_9824848?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_9824854?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_concatted_layer_call_fn_9824869?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_concatted_layer_call_and_return_conditional_losses_9824885?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_Dense0_layer_call_fn_9824894?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_Dense0_layer_call_and_return_conditional_losses_9824904?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_Dropout0_layer_call_fn_9824909
*__inference_Dropout0_layer_call_fn_9824914?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_Dropout0_layer_call_and_return_conditional_losses_9824919
E__inference_Dropout0_layer_call_and_return_conditional_losses_9824931?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_Dense1_layer_call_fn_9824940?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_Dense1_layer_call_and_return_conditional_losses_9824951?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_Dropout1_layer_call_fn_9824956
*__inference_Dropout1_layer_call_fn_9824961?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_Dropout1_layer_call_and_return_conditional_losses_9824966
E__inference_Dropout1_layer_call_and_return_conditional_losses_9824978?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_output_layer_call_fn_9824987?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_output_layer_call_and_return_conditional_losses_9824997?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_9825017?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_9825037?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_9825057?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_9825077?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_9825097?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_9825117?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
%__inference_signature_wrapper_9824064input_Area_Insured_Hainput_Area_Sown_Hainput_Blockinput_Cluster
input_Cropinput_Districtinput_Indemnity_Levelinput_SI_Per_Ha_Inr_Hainput_Stateinput_Sub_Districtinput_Sum_Insured_Inr"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823781?=83.)$^_hirs???
???
???
???
.
Block%?"
input_Block?????????
2
Cluster'?$
input_Cluster?????????
,
Crop$?!

input_Crop?????????
4
District(?%
input_District?????????
.
State%?"
input_State?????????
<
Sub_District,?)
input_Sub_District?????????
???
B
Area_Insured_Ha/?,
input_Area_Insured_Ha?????????
<
Area_Sown_Ha,?)
input_Area_Sown_Ha?????????
B
Indemnity_Level/?,
input_Indemnity_Level?????????
D
SI_Per_Ha_Inr_Ha0?-
input_SI_Per_Ha_Inr_Ha?????????
B
Sum_Insured_Inr/?,
input_Sum_Insured_Inr?????????
p 

 
? "%?"
?
0?????????
? ?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9823927?=83.)$^_hirs???
???
???
???
.
Block%?"
input_Block?????????
2
Cluster'?$
input_Cluster?????????
,
Crop$?!

input_Crop?????????
4
District(?%
input_District?????????
.
State%?"
input_State?????????
<
Sub_District,?)
input_Sub_District?????????
???
B
Area_Insured_Ha/?,
input_Area_Insured_Ha?????????
<
Area_Sown_Ha,?)
input_Area_Sown_Ha?????????
B
Indemnity_Level/?,
input_Indemnity_Level?????????
D
SI_Per_Ha_Inr_Ha0?-
input_SI_Per_Ha_Inr_Ha?????????
B
Sum_Insured_Inr/?,
input_Sum_Insured_Inr?????????
p

 
? "%?"
?
0?????????
? ?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9824317?=83.)$^_hirs???
???
???
???
1
Block(?%
inputs/0/Block?????????
5
Cluster*?'
inputs/0/Cluster?????????
/
Crop'?$
inputs/0/Crop?????????
7
District+?(
inputs/0/District?????????
1
State(?%
inputs/0/State?????????
?
Sub_District/?,
inputs/0/Sub_District?????????
???
E
Area_Insured_Ha2?/
inputs/1/Area_Insured_Ha?????????
?
Area_Sown_Ha/?,
inputs/1/Area_Sown_Ha?????????
E
Indemnity_Level2?/
inputs/1/Indemnity_Level?????????
G
SI_Per_Ha_Inr_Ha3?0
inputs/1/SI_Per_Ha_Inr_Ha?????????
E
Sum_Insured_Inr2?/
inputs/1/Sum_Insured_Inr?????????
p 

 
? "%?"
?
0?????????
? ?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_9824506?=83.)$^_hirs???
???
???
???
1
Block(?%
inputs/0/Block?????????
5
Cluster*?'
inputs/0/Cluster?????????
/
Crop'?$
inputs/0/Crop?????????
7
District+?(
inputs/0/District?????????
1
State(?%
inputs/0/State?????????
?
Sub_District/?,
inputs/0/Sub_District?????????
???
E
Area_Insured_Ha2?/
inputs/1/Area_Insured_Ha?????????
?
Area_Sown_Ha/?,
inputs/1/Area_Sown_Ha?????????
E
Indemnity_Level2?/
inputs/1/Indemnity_Level?????????
G
SI_Per_Ha_Inr_Ha3?0
inputs/1/SI_Per_Ha_Inr_Ha?????????
E
Sum_Insured_Inr2?/
inputs/1/Sum_Insured_Inr?????????
p

 
? "%?"
?
0?????????
? ?
5__inference_Deep_embedded_model_layer_call_fn_9823196?=83.)$^_hirs???
???
???
???
.
Block%?"
input_Block?????????
2
Cluster'?$
input_Cluster?????????
,
Crop$?!

input_Crop?????????
4
District(?%
input_District?????????
.
State%?"
input_State?????????
<
Sub_District,?)
input_Sub_District?????????
???
B
Area_Insured_Ha/?,
input_Area_Insured_Ha?????????
<
Area_Sown_Ha,?)
input_Area_Sown_Ha?????????
B
Indemnity_Level/?,
input_Indemnity_Level?????????
D
SI_Per_Ha_Inr_Ha0?-
input_SI_Per_Ha_Inr_Ha?????????
B
Sum_Insured_Inr/?,
input_Sum_Insured_Inr?????????
p 

 
? "???????????
5__inference_Deep_embedded_model_layer_call_fn_9823635?=83.)$^_hirs???
???
???
???
.
Block%?"
input_Block?????????
2
Cluster'?$
input_Cluster?????????
,
Crop$?!

input_Crop?????????
4
District(?%
input_District?????????
.
State%?"
input_State?????????
<
Sub_District,?)
input_Sub_District?????????
???
B
Area_Insured_Ha/?,
input_Area_Insured_Ha?????????
<
Area_Sown_Ha,?)
input_Area_Sown_Ha?????????
B
Indemnity_Level/?,
input_Indemnity_Level?????????
D
SI_Per_Ha_Inr_Ha0?-
input_SI_Per_Ha_Inr_Ha?????????
B
Sum_Insured_Inr/?,
input_Sum_Insured_Inr?????????
p

 
? "???????????
5__inference_Deep_embedded_model_layer_call_fn_9824103?=83.)$^_hirs???
???
???
???
1
Block(?%
inputs/0/Block?????????
5
Cluster*?'
inputs/0/Cluster?????????
/
Crop'?$
inputs/0/Crop?????????
7
District+?(
inputs/0/District?????????
1
State(?%
inputs/0/State?????????
?
Sub_District/?,
inputs/0/Sub_District?????????
???
E
Area_Insured_Ha2?/
inputs/1/Area_Insured_Ha?????????
?
Area_Sown_Ha/?,
inputs/1/Area_Sown_Ha?????????
E
Indemnity_Level2?/
inputs/1/Indemnity_Level?????????
G
SI_Per_Ha_Inr_Ha3?0
inputs/1/SI_Per_Ha_Inr_Ha?????????
E
Sum_Insured_Inr2?/
inputs/1/Sum_Insured_Inr?????????
p 

 
? "???????????
5__inference_Deep_embedded_model_layer_call_fn_9824142?=83.)$^_hirs???
???
???
???
1
Block(?%
inputs/0/Block?????????
5
Cluster*?'
inputs/0/Cluster?????????
/
Crop'?$
inputs/0/Crop?????????
7
District+?(
inputs/0/District?????????
1
State(?%
inputs/0/State?????????
?
Sub_District/?,
inputs/0/Sub_District?????????
???
E
Area_Insured_Ha2?/
inputs/1/Area_Insured_Ha?????????
?
Area_Sown_Ha/?,
inputs/1/Area_Sown_Ha?????????
E
Indemnity_Level2?/
inputs/1/Indemnity_Level?????????
G
SI_Per_Ha_Inr_Ha3?0
inputs/1/SI_Per_Ha_Inr_Ha?????????
E
Sum_Insured_Inr2?/
inputs/1/Sum_Insured_Inr?????????
p

 
? "???????????
C__inference_Dense0_layer_call_and_return_conditional_losses_9824904\^_/?,
%?"
 ?
inputs?????????}
? "%?"
?
0?????????d
? {
(__inference_Dense0_layer_call_fn_9824894O^_/?,
%?"
 ?
inputs?????????}
? "??????????d?
C__inference_Dense1_layer_call_and_return_conditional_losses_9824951\hi/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????2
? {
(__inference_Dense1_layer_call_fn_9824940Ohi/?,
%?"
 ?
inputs?????????d
? "??????????2?
E__inference_Dropout0_layer_call_and_return_conditional_losses_9824919\3?0
)?&
 ?
inputs?????????d
p 
? "%?"
?
0?????????d
? ?
E__inference_Dropout0_layer_call_and_return_conditional_losses_9824931\3?0
)?&
 ?
inputs?????????d
p
? "%?"
?
0?????????d
? }
*__inference_Dropout0_layer_call_fn_9824909O3?0
)?&
 ?
inputs?????????d
p 
? "??????????d}
*__inference_Dropout0_layer_call_fn_9824914O3?0
)?&
 ?
inputs?????????d
p
? "??????????d?
E__inference_Dropout1_layer_call_and_return_conditional_losses_9824966\3?0
)?&
 ?
inputs?????????2
p 
? "%?"
?
0?????????2
? ?
E__inference_Dropout1_layer_call_and_return_conditional_losses_9824978\3?0
)?&
 ?
inputs?????????2
p
? "%?"
?
0?????????2
? }
*__inference_Dropout1_layer_call_fn_9824956O3?0
)?&
 ?
inputs?????????2
p 
? "??????????2}
*__inference_Dropout1_layer_call_fn_9824961O3?0
)?&
 ?
inputs?????????2
p
? "??????????2?
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_9824694_3/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
1__inference_Embedding_Block_layer_call_fn_9824669R3/?,
%?"
 ?
inputs?????????
? "???????????
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_9824788_=/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
3__inference_Embedding_Cluster_layer_call_fn_9824763R=/?,
%?"
 ?
inputs?????????
? "???????????
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_9824647_./?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
0__inference_Embedding_Crop_layer_call_fn_9824622R./?,
%?"
 ?
inputs?????????
? "???????????
O__inference_Embedding_District_layer_call_and_return_conditional_losses_9824553_$/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
4__inference_Embedding_District_layer_call_fn_9824528R$/?,
%?"
 ?
inputs?????????
? "???????????
L__inference_Embedding_State_layer_call_and_return_conditional_losses_9824741_8/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
1__inference_Embedding_State_layer_call_fn_9824716R8/?,
%?"
 ?
inputs?????????
? "???????????
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_9824600_)/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
8__inference_Embedding_Sub_District_layer_call_fn_9824575R)/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_Flatten_Block_layer_call_and_return_conditional_losses_9824832\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
/__inference_Flatten_Block_layer_call_fn_9824826O3?0
)?&
$?!
inputs?????????
? "???????????
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_9824854\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
1__inference_Flatten_Cluster_layer_call_fn_9824848O3?0
)?&
$?!
inputs?????????
? "???????????
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_9824821\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
.__inference_Flatten_Crop_layer_call_fn_9824815O3?0
)?&
$?!
inputs?????????
? "???????????
M__inference_Flatten_District_layer_call_and_return_conditional_losses_9824799\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
2__inference_Flatten_District_layer_call_fn_9824793O3?0
)?&
$?!
inputs?????????
? "???????????
J__inference_Flatten_State_layer_call_and_return_conditional_losses_9824843\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
/__inference_Flatten_State_layer_call_fn_9824837O3?0
)?&
$?!
inputs?????????
? "???????????
Q__inference_Flatten_Sub_District_layer_call_and_return_conditional_losses_9824810\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
6__inference_Flatten_Sub_District_layer_call_fn_9824804O3?0
)?&
$?!
inputs?????????
? "???????????
"__inference__wrapped_model_9822748?=83.)$^_hirs???
???
???
???
.
Block%?"
input_Block?????????
2
Cluster'?$
input_Cluster?????????
,
Crop$?!

input_Crop?????????
4
District(?%
input_District?????????
.
State%?"
input_State?????????
<
Sub_District,?)
input_Sub_District?????????
???
B
Area_Insured_Ha/?,
input_Area_Insured_Ha?????????
<
Area_Sown_Ha,?)
input_Area_Sown_Ha?????????
B
Indemnity_Level/?,
input_Indemnity_Level?????????
D
SI_Per_Ha_Inr_Ha0?-
input_SI_Per_Ha_Inr_Ha?????????
B
Sum_Insured_Inr/?,
input_Sum_Insured_Inr?????????
? "/?,
*
output ?
output??????????
F__inference_concatted_layer_call_and_return_conditional_losses_9824885????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
"?
inputs/9?????????
#? 
	inputs/10?????????
? "%?"
?
0?????????}
? ?
+__inference_concatted_layer_call_fn_9824869????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
"?
inputs/8?????????
"?
inputs/9?????????
#? 
	inputs/10?????????
? "??????????}<
__inference_loss_fn_0_9825017$?

? 
? "? <
__inference_loss_fn_1_9825037)?

? 
? "? <
__inference_loss_fn_2_9825057.?

? 
? "? <
__inference_loss_fn_3_98250773?

? 
? "? <
__inference_loss_fn_4_98250978?

? 
? "? <
__inference_loss_fn_5_9825117=?

? 
? "? ?
C__inference_output_layer_call_and_return_conditional_losses_9824997\rs/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? {
(__inference_output_layer_call_fn_9824987Ors/?,
%?"
 ?
inputs?????????2
? "???????????
%__inference_signature_wrapper_9824064?=83.)$^_hirs???
? 
???
H
input_Area_Insured_Ha/?,
input_Area_Insured_Ha?????????
B
input_Area_Sown_Ha,?)
input_Area_Sown_Ha?????????
4
input_Block%?"
input_Block?????????
8
input_Cluster'?$
input_Cluster?????????
2

input_Crop$?!

input_Crop?????????
:
input_District(?%
input_District?????????
H
input_Indemnity_Level/?,
input_Indemnity_Level?????????
J
input_SI_Per_Ha_Inr_Ha0?-
input_SI_Per_Ha_Inr_Ha?????????
4
input_State%?"
input_State?????????
B
input_Sub_District,?)
input_Sub_District?????????
H
input_Sum_Insured_Inr/?,
input_Sum_Insured_Inr?????????"/?,
*
output ?
output?????????