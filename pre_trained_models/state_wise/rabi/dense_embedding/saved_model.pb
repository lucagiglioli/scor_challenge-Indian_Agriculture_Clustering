??
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
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
?
Embedding_Crop/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:9**
shared_nameEmbedding_Crop/embeddings
?
-Embedding_Crop/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_Crop/embeddings*
_output_shapes

:9*
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
:*-
shared_nameEmbedding_Cluster/embeddings
?
0Embedding_Cluster/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_Cluster/embeddings*
_output_shapes

:*
dtype0
v
Dense0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Ad*
shared_nameDense0/kernel
o
!Dense0/kernel/Read/ReadVariableOpReadVariableOpDense0/kernel*
_output_shapes

:Ad*
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
:2*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:2*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
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
 Adam/Embedding_Crop/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:9*1
shared_name" Adam/Embedding_Crop/embeddings/m
?
4Adam/Embedding_Crop/embeddings/m/Read/ReadVariableOpReadVariableOp Adam/Embedding_Crop/embeddings/m*
_output_shapes

:9*
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
:*4
shared_name%#Adam/Embedding_Cluster/embeddings/m
?
7Adam/Embedding_Cluster/embeddings/m/Read/ReadVariableOpReadVariableOp#Adam/Embedding_Cluster/embeddings/m*
_output_shapes

:*
dtype0
?
Adam/Dense0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Ad*%
shared_nameAdam/Dense0/kernel/m
}
(Adam/Dense0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense0/kernel/m*
_output_shapes

:Ad*
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
:2*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:2*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0
?
 Adam/Embedding_Crop/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:9*1
shared_name" Adam/Embedding_Crop/embeddings/v
?
4Adam/Embedding_Crop/embeddings/v/Read/ReadVariableOpReadVariableOp Adam/Embedding_Crop/embeddings/v*
_output_shapes

:9*
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
:*4
shared_name%#Adam/Embedding_Cluster/embeddings/v
?
7Adam/Embedding_Cluster/embeddings/v/Read/ReadVariableOpReadVariableOp#Adam/Embedding_Cluster/embeddings/v*
_output_shapes

:*
dtype0
?
Adam/Dense0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:Ad*%
shared_nameAdam/Dense0/kernel/v
}
(Adam/Dense0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense0/kernel/v*
_output_shapes

:Ad*
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
:2*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:2*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?G
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?F
value?FB?F B?F
?
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer_with_weights-3
layer-15
layer-16
layer_with_weights-4
layer-17
layer-18
layer_with_weights-5
layer-19
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
 
 
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
b
 
embeddings
!	variables
"trainable_variables
#regularization_losses
$	keras_api
b
%
embeddings
&	variables
'trainable_variables
(regularization_losses
)	keras_api
R
*	variables
+trainable_variables
,regularization_losses
-	keras_api
R
.	variables
/trainable_variables
0regularization_losses
1	keras_api
R
2	variables
3trainable_variables
4regularization_losses
5	keras_api
 
 
 
 
 
R
6	variables
7trainable_variables
8regularization_losses
9	keras_api
h

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
R
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
h

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
R
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
h

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
?
Titer

Ubeta_1

Vbeta_2
	Wdecay
Xlearning_ratem? m?%m?:m?;m?Dm?Em?Nm?Om?v? v?%v?:v?;v?Dv?Ev?Nv?Ov?
?
0
 1
%2
:3
;4
D5
E6
N7
O8
?
0
 1
%2
:3
;4
D5
E6
N7
O8
 
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
regularization_losses
 
ig
VARIABLE_VALUEEmbedding_Crop/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
jh
VARIABLE_VALUEEmbedding_State/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

 0

 0
 
?
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
!	variables
"trainable_variables
#regularization_losses
lj
VARIABLE_VALUEEmbedding_Cluster/embeddings:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUE

%0

%0
 
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
&	variables
'trainable_variables
(regularization_losses
 
 
 
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
*	variables
+trainable_variables
,regularization_losses
 
 
 
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
.	variables
/trainable_variables
0regularization_losses
 
 
 
?
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
2	variables
3trainable_variables
4regularization_losses
 
 
 
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
?layer_metrics
6	variables
7trainable_variables
8regularization_losses
YW
VARIABLE_VALUEDense0/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEDense0/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1

:0
;1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
YW
VARIABLE_VALUEDense1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEDense1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

D0
E1
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
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

N0
O1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
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
VARIABLE_VALUE Adam/Embedding_Crop/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/Embedding_State/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/Embedding_Cluster/embeddings/mVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense0/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense0/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/Embedding_Crop/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/Embedding_State/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/Embedding_Cluster/embeddings/vVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense0/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense0/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
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
%serving_default_input_Sum_Insured_InrPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall%serving_default_input_Area_Insured_Ha"serving_default_input_Area_Sown_Haserving_default_input_Clusterserving_default_input_Crop%serving_default_input_Indemnity_Level&serving_default_input_SI_Per_Ha_Inr_Haserving_default_input_State%serving_default_input_Sum_Insured_InrEmbedding_Cluster/embeddingsEmbedding_State/embeddingsEmbedding_Crop/embeddingsDense0/kernelDense0/biasDense1/kernelDense1/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_2659926
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-Embedding_Crop/embeddings/Read/ReadVariableOp.Embedding_State/embeddings/Read/ReadVariableOp0Embedding_Cluster/embeddings/Read/ReadVariableOp!Dense0/kernel/Read/ReadVariableOpDense0/bias/Read/ReadVariableOp!Dense1/kernel/Read/ReadVariableOpDense1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp4Adam/Embedding_Crop/embeddings/m/Read/ReadVariableOp5Adam/Embedding_State/embeddings/m/Read/ReadVariableOp7Adam/Embedding_Cluster/embeddings/m/Read/ReadVariableOp(Adam/Dense0/kernel/m/Read/ReadVariableOp&Adam/Dense0/bias/m/Read/ReadVariableOp(Adam/Dense1/kernel/m/Read/ReadVariableOp&Adam/Dense1/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp4Adam/Embedding_Crop/embeddings/v/Read/ReadVariableOp5Adam/Embedding_State/embeddings/v/Read/ReadVariableOp7Adam/Embedding_Cluster/embeddings/v/Read/ReadVariableOp(Adam/Dense0/kernel/v/Read/ReadVariableOp&Adam/Dense0/bias/v/Read/ReadVariableOp(Adam/Dense1/kernel/v/Read/ReadVariableOp&Adam/Dense1/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*1
Tin*
(2&	*
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
 __inference__traced_save_2660715
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameEmbedding_Crop/embeddingsEmbedding_State/embeddingsEmbedding_Cluster/embeddingsDense0/kernelDense0/biasDense1/kernelDense1/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1 Adam/Embedding_Crop/embeddings/m!Adam/Embedding_State/embeddings/m#Adam/Embedding_Cluster/embeddings/mAdam/Dense0/kernel/mAdam/Dense0/bias/mAdam/Dense1/kernel/mAdam/Dense1/bias/mAdam/output/kernel/mAdam/output/bias/m Adam/Embedding_Crop/embeddings/v!Adam/Embedding_State/embeddings/v#Adam/Embedding_Cluster/embeddings/vAdam/Dense0/kernel/vAdam/Dense0/bias/vAdam/Dense1/kernel/vAdam/Dense1/bias/vAdam/output/kernel/vAdam/output/bias/v*0
Tin)
'2%*
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
#__inference__traced_restore_2660833??
?~
?	
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659620

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7+
embedding_cluster_2659544:)
embedding_state_2659547:(
embedding_crop_2659550:9 
dense0_2659557:Ad
dense0_2659559:d 
dense1_2659563:d2
dense1_2659565:2 
output_2659569:2
output_2659571:
identity??Dense0/StatefulPartitionedCall?Dense1/StatefulPartitionedCall? Dropout0/StatefulPartitionedCall? Dropout1/StatefulPartitionedCall?)Embedding_Cluster/StatefulPartitionedCall?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?&Embedding_Crop/StatefulPartitionedCall?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
)Embedding_Cluster/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_cluster_2659544*
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
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_2659133?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinputs_2embedding_state_2659547*
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
L__inference_Embedding_State_layer_call_and_return_conditional_losses_2659162?
&Embedding_Crop/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_crop_2659550*
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
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_2659191?
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
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_2659201?
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
J__inference_Flatten_State_layer_call_and_return_conditional_losses_2659209?
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
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_2659217?
concatted/PartitionedCallPartitionedCall%Flatten_Crop/PartitionedCall:output:0&Flatten_State/PartitionedCall:output:0(Flatten_Cluster/PartitionedCall:output:0inputs_4inputs_3inputs_6inputs_7inputs_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????A* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatted_layer_call_and_return_conditional_losses_2659232?
Dense0/StatefulPartitionedCallStatefulPartitionedCall"concatted/PartitionedCall:output:0dense0_2659557dense0_2659559*
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
C__inference_Dense0_layer_call_and_return_conditional_losses_2659244?
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
E__inference_Dropout0_layer_call_and_return_conditional_losses_2659427?
Dense1/StatefulPartitionedCallStatefulPartitionedCall)Dropout0/StatefulPartitionedCall:output:0dense1_2659563dense1_2659565*
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
C__inference_Dense1_layer_call_and_return_conditional_losses_2659268?
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
E__inference_Dropout1_layer_call_and_return_conditional_losses_2659394?
output/StatefulPartitionedCallStatefulPartitionedCall)Dropout1/StatefulPartitionedCall:output:0output_2659569output_2659571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2659291p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_crop_2659550*
_output_shapes

:9*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_crop_2659550*
_output_shapes

:9*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_2659547*
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
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_2659547*
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
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_cluster_2659544*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_cluster_2659544*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
:??????????
NoOpNoOp^Dense0/StatefulPartitionedCall^Dense1/StatefulPartitionedCall!^Dropout0/StatefulPartitionedCall!^Dropout1/StatefulPartitionedCall*^Embedding_Cluster/StatefulPartitionedCall<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp'^Embedding_Crop/StatefulPartitionedCall9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2D
 Dropout0/StatefulPartitionedCall Dropout0/StatefulPartitionedCall2D
 Dropout1/StatefulPartitionedCall Dropout1/StatefulPartitionedCall2V
)Embedding_Cluster/StatefulPartitionedCall)Embedding_Cluster/StatefulPartitionedCall2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2P
&Embedding_Crop/StatefulPartitionedCall&Embedding_Crop/StatefulPartitionedCall2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2@
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
 
_user_specified_nameinputs
??
?	
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659843
input_cluster

input_crop
input_state
input_area_insured_ha
input_area_sown_ha
input_indemnity_level
input_si_per_ha_inr_ha
input_sum_insured_inr+
embedding_cluster_2659767:)
embedding_state_2659770:(
embedding_crop_2659773:9 
dense0_2659780:Ad
dense0_2659782:d 
dense1_2659786:d2
dense1_2659788:2 
output_2659792:2
output_2659794:
identity??Dense0/StatefulPartitionedCall?Dense1/StatefulPartitionedCall? Dropout0/StatefulPartitionedCall? Dropout1/StatefulPartitionedCall?)Embedding_Cluster/StatefulPartitionedCall?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?&Embedding_Crop/StatefulPartitionedCall?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
)Embedding_Cluster/StatefulPartitionedCallStatefulPartitionedCallinput_clusterembedding_cluster_2659767*
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
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_2659133?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinput_stateembedding_state_2659770*
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
L__inference_Embedding_State_layer_call_and_return_conditional_losses_2659162?
&Embedding_Crop/StatefulPartitionedCallStatefulPartitionedCall
input_cropembedding_crop_2659773*
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
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_2659191?
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
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_2659201?
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
J__inference_Flatten_State_layer_call_and_return_conditional_losses_2659209?
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
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_2659217?
concatted/PartitionedCallPartitionedCall%Flatten_Crop/PartitionedCall:output:0&Flatten_State/PartitionedCall:output:0(Flatten_Cluster/PartitionedCall:output:0input_area_sown_hainput_area_insured_hainput_si_per_ha_inr_hainput_sum_insured_inrinput_indemnity_level*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????A* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatted_layer_call_and_return_conditional_losses_2659232?
Dense0/StatefulPartitionedCallStatefulPartitionedCall"concatted/PartitionedCall:output:0dense0_2659780dense0_2659782*
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
C__inference_Dense0_layer_call_and_return_conditional_losses_2659244?
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
E__inference_Dropout0_layer_call_and_return_conditional_losses_2659427?
Dense1/StatefulPartitionedCallStatefulPartitionedCall)Dropout0/StatefulPartitionedCall:output:0dense1_2659786dense1_2659788*
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
C__inference_Dense1_layer_call_and_return_conditional_losses_2659268?
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
E__inference_Dropout1_layer_call_and_return_conditional_losses_2659394?
output/StatefulPartitionedCallStatefulPartitionedCall)Dropout1/StatefulPartitionedCall:output:0output_2659792output_2659794*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2659291p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_crop_2659773*
_output_shapes

:9*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_crop_2659773*
_output_shapes

:9*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_2659770*
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
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_2659770*
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
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_cluster_2659767*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_cluster_2659767*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
:??????????
NoOpNoOp^Dense0/StatefulPartitionedCall^Dense1/StatefulPartitionedCall!^Dropout0/StatefulPartitionedCall!^Dropout1/StatefulPartitionedCall*^Embedding_Cluster/StatefulPartitionedCall<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp'^Embedding_Crop/StatefulPartitionedCall9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2D
 Dropout0/StatefulPartitionedCall Dropout0/StatefulPartitionedCall2D
 Dropout1/StatefulPartitionedCall Dropout1/StatefulPartitionedCall2V
)Embedding_Cluster/StatefulPartitionedCall)Embedding_Cluster/StatefulPartitionedCall2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2P
&Embedding_Crop/StatefulPartitionedCall&Embedding_Crop/StatefulPartitionedCall2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?
F
*__inference_Dropout1_layer_call_fn_2660476

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
E__inference_Dropout1_layer_call_and_return_conditional_losses_2659279`
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
??
?
#__inference__traced_restore_2660833
file_prefix<
*assignvariableop_embedding_crop_embeddings:9?
-assignvariableop_1_embedding_state_embeddings:A
/assignvariableop_2_embedding_cluster_embeddings:2
 assignvariableop_3_dense0_kernel:Ad,
assignvariableop_4_dense0_bias:d2
 assignvariableop_5_dense1_kernel:d2,
assignvariableop_6_dense1_bias:22
 assignvariableop_7_output_kernel:2,
assignvariableop_8_output_bias:&
assignvariableop_9_adam_iter:	 )
assignvariableop_10_adam_beta_1: )
assignvariableop_11_adam_beta_2: (
assignvariableop_12_adam_decay: 0
&assignvariableop_13_adam_learning_rate: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: F
4assignvariableop_18_adam_embedding_crop_embeddings_m:9G
5assignvariableop_19_adam_embedding_state_embeddings_m:I
7assignvariableop_20_adam_embedding_cluster_embeddings_m::
(assignvariableop_21_adam_dense0_kernel_m:Ad4
&assignvariableop_22_adam_dense0_bias_m:d:
(assignvariableop_23_adam_dense1_kernel_m:d24
&assignvariableop_24_adam_dense1_bias_m:2:
(assignvariableop_25_adam_output_kernel_m:24
&assignvariableop_26_adam_output_bias_m:F
4assignvariableop_27_adam_embedding_crop_embeddings_v:9G
5assignvariableop_28_adam_embedding_state_embeddings_v:I
7assignvariableop_29_adam_embedding_cluster_embeddings_v::
(assignvariableop_30_adam_dense0_kernel_v:Ad4
&assignvariableop_31_adam_dense0_bias_v:d:
(assignvariableop_32_adam_dense1_kernel_v:d24
&assignvariableop_33_adam_dense1_bias_v:2:
(assignvariableop_34_adam_output_kernel_v:24
&assignvariableop_35_adam_output_bias_v:
identity_37??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*?
value?B?%B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp*assignvariableop_embedding_crop_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp-assignvariableop_1_embedding_state_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_embedding_cluster_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense0_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense0_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense1_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_output_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_output_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_embedding_crop_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp5assignvariableop_19_adam_embedding_state_embeddings_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp7assignvariableop_20_adam_embedding_cluster_embeddings_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense0_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_dense0_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_dense1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_output_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_output_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_embedding_crop_embeddings_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp5assignvariableop_28_adam_embedding_state_embeddings_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp7assignvariableop_29_adam_embedding_cluster_embeddings_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense0_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp&assignvariableop_31_adam_dense0_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense1_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_dense1_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_output_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp&assignvariableop_35_adam_output_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
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
?

?
C__inference_Dense1_layer_call_and_return_conditional_losses_2660471

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
?
F__inference_concatted_layer_call_and_return_conditional_losses_2659232

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????AW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????A"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:O K
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
 
_user_specified_nameinputs
?
?
(__inference_output_layer_call_fn_2660507

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2659291o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
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
?
K
/__inference_Flatten_State_layer_call_fn_2660363

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
J__inference_Flatten_State_layer_call_and_return_conditional_losses_2659209`
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
1__inference_Embedding_State_layer_call_fn_2660275

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
L__inference_Embedding_State_layer_call_and_return_conditional_losses_2659162s
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
?
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_2660347

inputs*
embedding_lookup_2660326:
identity??;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_2660326Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2660326*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2660326*+
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
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_2660326*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_2660326*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
?
?
__inference_loss_fn_1_2660557T
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
h
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_2659217

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
E__inference_Dropout0_layer_call_and_return_conditional_losses_2660439

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
0__inference_Embedding_Crop_layer_call_fn_2660228

inputs
unknown:9
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
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_2659191s
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
??
?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2660089
inputs_0_cluster
inputs_0_crop
inputs_0_state
inputs_1_area_insured_ha
inputs_1_area_sown_ha
inputs_1_indemnity_level
inputs_1_si_per_ha_inr_ha
inputs_1_sum_insured_inr<
*embedding_cluster_embedding_lookup_2659997::
(embedding_state_embedding_lookup_2660003:9
'embedding_crop_embedding_lookup_2660009:97
%dense0_matmul_readvariableop_resource:Ad4
&dense0_biasadd_readvariableop_resource:d7
%dense1_matmul_readvariableop_resource:d24
&dense1_biasadd_readvariableop_resource:27
%output_matmul_readvariableop_resource:24
&output_biasadd_readvariableop_resource:
identity??Dense0/BiasAdd/ReadVariableOp?Dense0/MatMul/ReadVariableOp?Dense1/BiasAdd/ReadVariableOp?Dense1/MatMul/ReadVariableOp?"Embedding_Cluster/embedding_lookup?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?Embedding_Crop/embedding_lookup?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp? Embedding_State/embedding_lookup?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpq
Embedding_Cluster/CastCastinputs_0_cluster*

DstT0*

SrcT0*'
_output_shapes
:??????????
"Embedding_Cluster/embedding_lookupResourceGather*embedding_cluster_embedding_lookup_2659997Embedding_Cluster/Cast:y:0*
Tindices0*=
_class3
1/loc:@Embedding_Cluster/embedding_lookup/2659997*+
_output_shapes
:?????????*
dtype0?
+Embedding_Cluster/embedding_lookup/IdentityIdentity+Embedding_Cluster/embedding_lookup:output:0*
T0*=
_class3
1/loc:@Embedding_Cluster/embedding_lookup/2659997*+
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
 Embedding_State/embedding_lookupResourceGather(embedding_state_embedding_lookup_2660003Embedding_State/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_State/embedding_lookup/2660003*+
_output_shapes
:?????????*
dtype0?
)Embedding_State/embedding_lookup/IdentityIdentity)Embedding_State/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_State/embedding_lookup/2660003*+
_output_shapes
:??????????
+Embedding_State/embedding_lookup/Identity_1Identity2Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????k
Embedding_Crop/CastCastinputs_0_crop*

DstT0*

SrcT0*'
_output_shapes
:??????????
Embedding_Crop/embedding_lookupResourceGather'embedding_crop_embedding_lookup_2660009Embedding_Crop/Cast:y:0*
Tindices0*:
_class0
.,loc:@Embedding_Crop/embedding_lookup/2660009*+
_output_shapes
:?????????*
dtype0?
(Embedding_Crop/embedding_lookup/IdentityIdentity(Embedding_Crop/embedding_lookup:output:0*
T0*:
_class0
.,loc:@Embedding_Crop/embedding_lookup/2660009*+
_output_shapes
:??????????
*Embedding_Crop/embedding_lookup/Identity_1Identity1Embedding_Crop/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????c
Flatten_Crop/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_Crop/ReshapeReshape3Embedding_Crop/embedding_lookup/Identity_1:output:0Flatten_Crop/Const:output:0*
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
value	B :?
concatted/concatConcatV2Flatten_Crop/Reshape:output:0Flatten_State/Reshape:output:0 Flatten_Cluster/Reshape:output:0inputs_1_area_sown_hainputs_1_area_insured_hainputs_1_si_per_ha_inr_hainputs_1_sum_insured_inrinputs_1_indemnity_levelconcatted/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????A?
Dense0/MatMul/ReadVariableOpReadVariableOp%dense0_matmul_readvariableop_resource*
_output_shapes

:Ad*
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

:2*
dtype0?
output/MatMulMatMulDropout1/Identity:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp'embedding_crop_embedding_lookup_2660009*
_output_shapes

:9*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp'embedding_crop_embedding_lookup_2660009*
_output_shapes

:9*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_2660003*
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
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_2660003*
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
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp*embedding_cluster_embedding_lookup_2659997*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp*embedding_cluster_embedding_lookup_2659997*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
:??????????
NoOpNoOp^Dense0/BiasAdd/ReadVariableOp^Dense0/MatMul/ReadVariableOp^Dense1/BiasAdd/ReadVariableOp^Dense1/MatMul/ReadVariableOp#^Embedding_Cluster/embedding_lookup<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp ^Embedding_Crop/embedding_lookup9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp!^Embedding_State/embedding_lookup:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 2>
Dense0/BiasAdd/ReadVariableOpDense0/BiasAdd/ReadVariableOp2<
Dense0/MatMul/ReadVariableOpDense0/MatMul/ReadVariableOp2>
Dense1/BiasAdd/ReadVariableOpDense1/BiasAdd/ReadVariableOp2<
Dense1/MatMul/ReadVariableOpDense1/MatMul/ReadVariableOp2H
"Embedding_Cluster/embedding_lookup"Embedding_Cluster/embedding_lookup2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2B
Embedding_Crop/embedding_lookupEmbedding_Crop/embedding_lookup2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2D
 Embedding_State/embedding_lookup Embedding_State/embedding_lookup2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????
*
_user_specified_nameinputs/0/Cluster:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/0/Crop:WS
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/State:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Area_Insured_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/1/Area_Sown_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Indemnity_Level:b^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/1/SI_Per_Ha_Inr_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Sum_Insured_Inr
?	
d
E__inference_Dropout0_layer_call_and_return_conditional_losses_2659427

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
?
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_2659133

inputs*
embedding_lookup_2659112:
identity??;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_2659112Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2659112*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2659112*+
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
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_2659112*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_2659112*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
?
F
*__inference_Dropout0_layer_call_fn_2660429

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
E__inference_Dropout0_layer_call_and_return_conditional_losses_2659255`
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
?
?
L__inference_Embedding_State_layer_call_and_return_conditional_losses_2660300

inputs*
embedding_lookup_2660279:
identity??9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_2660279Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2660279*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2660279*+
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
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_2660279*
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
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_2660279*
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
?
F__inference_concatted_layer_call_and_return_conditional_losses_2660405
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????AW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????A"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:Q M
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
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
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
inputs/7
?
M
1__inference_Flatten_Cluster_layer_call_fn_2660374

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
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_2659217`
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
?
c
E__inference_Dropout1_layer_call_and_return_conditional_losses_2659279

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
??
?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2660206
inputs_0_cluster
inputs_0_crop
inputs_0_state
inputs_1_area_insured_ha
inputs_1_area_sown_ha
inputs_1_indemnity_level
inputs_1_si_per_ha_inr_ha
inputs_1_sum_insured_inr<
*embedding_cluster_embedding_lookup_2660100::
(embedding_state_embedding_lookup_2660106:9
'embedding_crop_embedding_lookup_2660112:97
%dense0_matmul_readvariableop_resource:Ad4
&dense0_biasadd_readvariableop_resource:d7
%dense1_matmul_readvariableop_resource:d24
&dense1_biasadd_readvariableop_resource:27
%output_matmul_readvariableop_resource:24
&output_biasadd_readvariableop_resource:
identity??Dense0/BiasAdd/ReadVariableOp?Dense0/MatMul/ReadVariableOp?Dense1/BiasAdd/ReadVariableOp?Dense1/MatMul/ReadVariableOp?"Embedding_Cluster/embedding_lookup?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?Embedding_Crop/embedding_lookup?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp? Embedding_State/embedding_lookup?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpq
Embedding_Cluster/CastCastinputs_0_cluster*

DstT0*

SrcT0*'
_output_shapes
:??????????
"Embedding_Cluster/embedding_lookupResourceGather*embedding_cluster_embedding_lookup_2660100Embedding_Cluster/Cast:y:0*
Tindices0*=
_class3
1/loc:@Embedding_Cluster/embedding_lookup/2660100*+
_output_shapes
:?????????*
dtype0?
+Embedding_Cluster/embedding_lookup/IdentityIdentity+Embedding_Cluster/embedding_lookup:output:0*
T0*=
_class3
1/loc:@Embedding_Cluster/embedding_lookup/2660100*+
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
 Embedding_State/embedding_lookupResourceGather(embedding_state_embedding_lookup_2660106Embedding_State/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_State/embedding_lookup/2660106*+
_output_shapes
:?????????*
dtype0?
)Embedding_State/embedding_lookup/IdentityIdentity)Embedding_State/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_State/embedding_lookup/2660106*+
_output_shapes
:??????????
+Embedding_State/embedding_lookup/Identity_1Identity2Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????k
Embedding_Crop/CastCastinputs_0_crop*

DstT0*

SrcT0*'
_output_shapes
:??????????
Embedding_Crop/embedding_lookupResourceGather'embedding_crop_embedding_lookup_2660112Embedding_Crop/Cast:y:0*
Tindices0*:
_class0
.,loc:@Embedding_Crop/embedding_lookup/2660112*+
_output_shapes
:?????????*
dtype0?
(Embedding_Crop/embedding_lookup/IdentityIdentity(Embedding_Crop/embedding_lookup:output:0*
T0*:
_class0
.,loc:@Embedding_Crop/embedding_lookup/2660112*+
_output_shapes
:??????????
*Embedding_Crop/embedding_lookup/Identity_1Identity1Embedding_Crop/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????c
Flatten_Crop/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Flatten_Crop/ReshapeReshape3Embedding_Crop/embedding_lookup/Identity_1:output:0Flatten_Crop/Const:output:0*
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
value	B :?
concatted/concatConcatV2Flatten_Crop/Reshape:output:0Flatten_State/Reshape:output:0 Flatten_Cluster/Reshape:output:0inputs_1_area_sown_hainputs_1_area_insured_hainputs_1_si_per_ha_inr_hainputs_1_sum_insured_inrinputs_1_indemnity_levelconcatted/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????A?
Dense0/MatMul/ReadVariableOpReadVariableOp%dense0_matmul_readvariableop_resource*
_output_shapes

:Ad*
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

:2*
dtype0?
output/MatMulMatMulDropout1/dropout/Mul_1:z:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp'embedding_crop_embedding_lookup_2660112*
_output_shapes

:9*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp'embedding_crop_embedding_lookup_2660112*
_output_shapes

:9*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_2660106*
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
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_2660106*
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
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp*embedding_cluster_embedding_lookup_2660100*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp*embedding_cluster_embedding_lookup_2660100*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
:??????????
NoOpNoOp^Dense0/BiasAdd/ReadVariableOp^Dense0/MatMul/ReadVariableOp^Dense1/BiasAdd/ReadVariableOp^Dense1/MatMul/ReadVariableOp#^Embedding_Cluster/embedding_lookup<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp ^Embedding_Crop/embedding_lookup9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp!^Embedding_State/embedding_lookup:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 2>
Dense0/BiasAdd/ReadVariableOpDense0/BiasAdd/ReadVariableOp2<
Dense0/MatMul/ReadVariableOpDense0/MatMul/ReadVariableOp2>
Dense1/BiasAdd/ReadVariableOpDense1/BiasAdd/ReadVariableOp2<
Dense1/MatMul/ReadVariableOpDense1/MatMul/ReadVariableOp2H
"Embedding_Cluster/embedding_lookup"Embedding_Cluster/embedding_lookup2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2B
Embedding_Crop/embedding_lookupEmbedding_Crop/embedding_lookup2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2D
 Embedding_State/embedding_lookup Embedding_State/embedding_lookup2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????
*
_user_specified_nameinputs/0/Cluster:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/0/Crop:WS
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/State:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Area_Insured_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/1/Area_Sown_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Indemnity_Level:b^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/1/SI_Per_Ha_Inr_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Sum_Insured_Inr
?
f
J__inference_Flatten_State_layer_call_and_return_conditional_losses_2660369

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
?|
?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659343

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7+
embedding_cluster_2659134:)
embedding_state_2659163:(
embedding_crop_2659192:9 
dense0_2659245:Ad
dense0_2659247:d 
dense1_2659269:d2
dense1_2659271:2 
output_2659292:2
output_2659294:
identity??Dense0/StatefulPartitionedCall?Dense1/StatefulPartitionedCall?)Embedding_Cluster/StatefulPartitionedCall?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?&Embedding_Crop/StatefulPartitionedCall?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
)Embedding_Cluster/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_cluster_2659134*
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
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_2659133?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinputs_2embedding_state_2659163*
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
L__inference_Embedding_State_layer_call_and_return_conditional_losses_2659162?
&Embedding_Crop/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_crop_2659192*
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
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_2659191?
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
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_2659201?
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
J__inference_Flatten_State_layer_call_and_return_conditional_losses_2659209?
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
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_2659217?
concatted/PartitionedCallPartitionedCall%Flatten_Crop/PartitionedCall:output:0&Flatten_State/PartitionedCall:output:0(Flatten_Cluster/PartitionedCall:output:0inputs_4inputs_3inputs_6inputs_7inputs_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????A* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatted_layer_call_and_return_conditional_losses_2659232?
Dense0/StatefulPartitionedCallStatefulPartitionedCall"concatted/PartitionedCall:output:0dense0_2659245dense0_2659247*
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
C__inference_Dense0_layer_call_and_return_conditional_losses_2659244?
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
E__inference_Dropout0_layer_call_and_return_conditional_losses_2659255?
Dense1/StatefulPartitionedCallStatefulPartitionedCall!Dropout0/PartitionedCall:output:0dense1_2659269dense1_2659271*
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
C__inference_Dense1_layer_call_and_return_conditional_losses_2659268?
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
E__inference_Dropout1_layer_call_and_return_conditional_losses_2659279?
output/StatefulPartitionedCallStatefulPartitionedCall!Dropout1/PartitionedCall:output:0output_2659292output_2659294*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2659291p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_crop_2659192*
_output_shapes

:9*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_crop_2659192*
_output_shapes

:9*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_2659163*
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
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_2659163*
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
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_cluster_2659134*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_cluster_2659134*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
:??????????
NoOpNoOp^Dense0/StatefulPartitionedCall^Dense1/StatefulPartitionedCall*^Embedding_Cluster/StatefulPartitionedCall<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp'^Embedding_Crop/StatefulPartitionedCall9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2V
)Embedding_Cluster/StatefulPartitionedCall)Embedding_Cluster/StatefulPartitionedCall2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2P
&Embedding_Crop/StatefulPartitionedCall&Embedding_Crop/StatefulPartitionedCall2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2@
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
 
_user_specified_nameinputs
?W
?

"__inference__wrapped_model_2659087
input_cluster

input_crop
input_state
input_area_insured_ha
input_area_sown_ha
input_indemnity_level
input_si_per_ha_inr_ha
input_sum_insured_inrP
>deep_embedded_model_embedding_cluster_embedding_lookup_2659040:N
<deep_embedded_model_embedding_state_embedding_lookup_2659046:M
;deep_embedded_model_embedding_crop_embedding_lookup_2659052:9K
9deep_embedded_model_dense0_matmul_readvariableop_resource:AdH
:deep_embedded_model_dense0_biasadd_readvariableop_resource:dK
9deep_embedded_model_dense1_matmul_readvariableop_resource:d2H
:deep_embedded_model_dense1_biasadd_readvariableop_resource:2K
9deep_embedded_model_output_matmul_readvariableop_resource:2H
:deep_embedded_model_output_biasadd_readvariableop_resource:
identity??1Deep_embedded_model/Dense0/BiasAdd/ReadVariableOp?0Deep_embedded_model/Dense0/MatMul/ReadVariableOp?1Deep_embedded_model/Dense1/BiasAdd/ReadVariableOp?0Deep_embedded_model/Dense1/MatMul/ReadVariableOp?6Deep_embedded_model/Embedding_Cluster/embedding_lookup?3Deep_embedded_model/Embedding_Crop/embedding_lookup?4Deep_embedded_model/Embedding_State/embedding_lookup?1Deep_embedded_model/output/BiasAdd/ReadVariableOp?0Deep_embedded_model/output/MatMul/ReadVariableOp?
*Deep_embedded_model/Embedding_Cluster/CastCastinput_cluster*

DstT0*

SrcT0*'
_output_shapes
:??????????
6Deep_embedded_model/Embedding_Cluster/embedding_lookupResourceGather>deep_embedded_model_embedding_cluster_embedding_lookup_2659040.Deep_embedded_model/Embedding_Cluster/Cast:y:0*
Tindices0*Q
_classG
ECloc:@Deep_embedded_model/Embedding_Cluster/embedding_lookup/2659040*+
_output_shapes
:?????????*
dtype0?
?Deep_embedded_model/Embedding_Cluster/embedding_lookup/IdentityIdentity?Deep_embedded_model/Embedding_Cluster/embedding_lookup:output:0*
T0*Q
_classG
ECloc:@Deep_embedded_model/Embedding_Cluster/embedding_lookup/2659040*+
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
4Deep_embedded_model/Embedding_State/embedding_lookupResourceGather<deep_embedded_model_embedding_state_embedding_lookup_2659046,Deep_embedded_model/Embedding_State/Cast:y:0*
Tindices0*O
_classE
CAloc:@Deep_embedded_model/Embedding_State/embedding_lookup/2659046*+
_output_shapes
:?????????*
dtype0?
=Deep_embedded_model/Embedding_State/embedding_lookup/IdentityIdentity=Deep_embedded_model/Embedding_State/embedding_lookup:output:0*
T0*O
_classE
CAloc:@Deep_embedded_model/Embedding_State/embedding_lookup/2659046*+
_output_shapes
:??????????
?Deep_embedded_model/Embedding_State/embedding_lookup/Identity_1IdentityFDeep_embedded_model/Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????|
'Deep_embedded_model/Embedding_Crop/CastCast
input_crop*

DstT0*

SrcT0*'
_output_shapes
:??????????
3Deep_embedded_model/Embedding_Crop/embedding_lookupResourceGather;deep_embedded_model_embedding_crop_embedding_lookup_2659052+Deep_embedded_model/Embedding_Crop/Cast:y:0*
Tindices0*N
_classD
B@loc:@Deep_embedded_model/Embedding_Crop/embedding_lookup/2659052*+
_output_shapes
:?????????*
dtype0?
<Deep_embedded_model/Embedding_Crop/embedding_lookup/IdentityIdentity<Deep_embedded_model/Embedding_Crop/embedding_lookup:output:0*
T0*N
_classD
B@loc:@Deep_embedded_model/Embedding_Crop/embedding_lookup/2659052*+
_output_shapes
:??????????
>Deep_embedded_model/Embedding_Crop/embedding_lookup/Identity_1IdentityEDeep_embedded_model/Embedding_Crop/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????w
&Deep_embedded_model/Flatten_Crop/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
(Deep_embedded_model/Flatten_Crop/ReshapeReshapeGDeep_embedded_model/Embedding_Crop/embedding_lookup/Identity_1:output:0/Deep_embedded_model/Flatten_Crop/Const:output:0*
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
value	B :?
$Deep_embedded_model/concatted/concatConcatV21Deep_embedded_model/Flatten_Crop/Reshape:output:02Deep_embedded_model/Flatten_State/Reshape:output:04Deep_embedded_model/Flatten_Cluster/Reshape:output:0input_area_sown_hainput_area_insured_hainput_si_per_ha_inr_hainput_sum_insured_inrinput_indemnity_level2Deep_embedded_model/concatted/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????A?
0Deep_embedded_model/Dense0/MatMul/ReadVariableOpReadVariableOp9deep_embedded_model_dense0_matmul_readvariableop_resource*
_output_shapes

:Ad*
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

:2*
dtype0?
!Deep_embedded_model/output/MatMulMatMul.Deep_embedded_model/Dropout1/Identity:output:08Deep_embedded_model/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
1Deep_embedded_model/output/BiasAdd/ReadVariableOpReadVariableOp:deep_embedded_model_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
"Deep_embedded_model/output/BiasAddBiasAdd+Deep_embedded_model/output/MatMul:product:09Deep_embedded_model/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
IdentityIdentity+Deep_embedded_model/output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp2^Deep_embedded_model/Dense0/BiasAdd/ReadVariableOp1^Deep_embedded_model/Dense0/MatMul/ReadVariableOp2^Deep_embedded_model/Dense1/BiasAdd/ReadVariableOp1^Deep_embedded_model/Dense1/MatMul/ReadVariableOp7^Deep_embedded_model/Embedding_Cluster/embedding_lookup4^Deep_embedded_model/Embedding_Crop/embedding_lookup5^Deep_embedded_model/Embedding_State/embedding_lookup2^Deep_embedded_model/output/BiasAdd/ReadVariableOp1^Deep_embedded_model/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 2f
1Deep_embedded_model/Dense0/BiasAdd/ReadVariableOp1Deep_embedded_model/Dense0/BiasAdd/ReadVariableOp2d
0Deep_embedded_model/Dense0/MatMul/ReadVariableOp0Deep_embedded_model/Dense0/MatMul/ReadVariableOp2f
1Deep_embedded_model/Dense1/BiasAdd/ReadVariableOp1Deep_embedded_model/Dense1/BiasAdd/ReadVariableOp2d
0Deep_embedded_model/Dense1/MatMul/ReadVariableOp0Deep_embedded_model/Dense1/MatMul/ReadVariableOp2p
6Deep_embedded_model/Embedding_Cluster/embedding_lookup6Deep_embedded_model/Embedding_Cluster/embedding_lookup2j
3Deep_embedded_model/Embedding_Crop/embedding_lookup3Deep_embedded_model/Embedding_Crop/embedding_lookup2l
4Deep_embedded_model/Embedding_State/embedding_lookup4Deep_embedded_model/Embedding_State/embedding_lookup2f
1Deep_embedded_model/output/BiasAdd/ReadVariableOp1Deep_embedded_model/output/BiasAdd/ReadVariableOp2d
0Deep_embedded_model/output/MatMul/ReadVariableOp0Deep_embedded_model/output/MatMul/ReadVariableOp:V R
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?	
d
E__inference_Dropout1_layer_call_and_return_conditional_losses_2659394

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
?
?
5__inference_Deep_embedded_model_layer_call_fn_2659986
inputs_0_cluster
inputs_0_crop
inputs_0_state
inputs_1_area_insured_ha
inputs_1_area_sown_ha
inputs_1_indemnity_level
inputs_1_si_per_ha_inr_ha
inputs_1_sum_insured_inr
unknown:
	unknown_0:
	unknown_1:9
	unknown_2:Ad
	unknown_3:d
	unknown_4:d2
	unknown_5:2
	unknown_6:2
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0_clusterinputs_0_cropinputs_0_stateinputs_1_area_insured_hainputs_1_area_sown_hainputs_1_indemnity_levelinputs_1_si_per_ha_inr_hainputs_1_sum_insured_inrunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659620o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????
*
_user_specified_nameinputs/0/Cluster:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/0/Crop:WS
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/State:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Area_Insured_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/1/Area_Sown_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Indemnity_Level:b^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/1/SI_Per_Ha_Inr_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Sum_Insured_Inr
?
?
5__inference_Deep_embedded_model_layer_call_fn_2659671
input_cluster

input_crop
input_state
input_area_insured_ha
input_area_sown_ha
input_indemnity_level
input_si_per_ha_inr_ha
input_sum_insured_inr
unknown:
	unknown_0:
	unknown_1:9
	unknown_2:Ad
	unknown_3:d
	unknown_4:d2
	unknown_5:2
	unknown_6:2
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_cluster
input_cropinput_stateinput_area_insured_hainput_area_sown_hainput_indemnity_levelinput_si_per_ha_inr_hainput_sum_insured_inrunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659620o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?
?
%__inference_signature_wrapper_2659926
input_area_insured_ha
input_area_sown_ha
input_cluster

input_crop
input_indemnity_level
input_si_per_ha_inr_ha
input_state
input_sum_insured_inr
unknown:
	unknown_0:
	unknown_1:9
	unknown_2:Ad
	unknown_3:d
	unknown_4:d2
	unknown_5:2
	unknown_6:2
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_cluster
input_cropinput_stateinput_area_insured_hainput_area_sown_hainput_indemnity_levelinput_si_per_ha_inr_hainput_sum_insured_inrunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_2659087o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 22
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
_user_specified_nameinput_Area_Sown_Ha:VR
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?
e
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_2659201

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
__inference_loss_fn_0_2660537S
Aembedding_crop_embeddings_regularizer_abs_readvariableop_resource:9
identity??8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpp
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpAembedding_crop_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:9*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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

:9*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
?
?
(__inference_Dense0_layer_call_fn_2660414

inputs
unknown:Ad
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
C__inference_Dense0_layer_call_and_return_conditional_losses_2659244o
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
:?????????A: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????A
 
_user_specified_nameinputs
?
c
E__inference_Dropout1_layer_call_and_return_conditional_losses_2660486

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

?
C__inference_Dense1_layer_call_and_return_conditional_losses_2659268

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
L__inference_Embedding_State_layer_call_and_return_conditional_losses_2659162

inputs*
embedding_lookup_2659141:
identity??9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_2659141Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2659141*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2659141*+
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
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_2659141*
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
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_2659141*
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
(__inference_Dense1_layer_call_fn_2660460

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
C__inference_Dense1_layer_call_and_return_conditional_losses_2659268o
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
?
e
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_2660358

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
J
.__inference_Flatten_Crop_layer_call_fn_2660352

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
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_2659201`
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
3__inference_Embedding_Cluster_layer_call_fn_2660322

inputs
unknown:
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
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_2659133s
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
C__inference_output_layer_call_and_return_conditional_losses_2659291

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
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
f
J__inference_Flatten_State_layer_call_and_return_conditional_losses_2659209

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
d
E__inference_Dropout0_layer_call_and_return_conditional_losses_2660451

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
?
?
5__inference_Deep_embedded_model_layer_call_fn_2659364
input_cluster

input_crop
input_state
input_area_insured_ha
input_area_sown_ha
input_indemnity_level
input_si_per_ha_inr_ha
input_sum_insured_inr
unknown:
	unknown_0:
	unknown_1:9
	unknown_2:Ad
	unknown_3:d
	unknown_4:d2
	unknown_5:2
	unknown_6:2
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_cluster
input_cropinput_stateinput_area_insured_hainput_area_sown_hainput_indemnity_levelinput_si_per_ha_inr_hainput_sum_insured_inrunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659343o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?}
?	
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659757
input_cluster

input_crop
input_state
input_area_insured_ha
input_area_sown_ha
input_indemnity_level
input_si_per_ha_inr_ha
input_sum_insured_inr+
embedding_cluster_2659681:)
embedding_state_2659684:(
embedding_crop_2659687:9 
dense0_2659694:Ad
dense0_2659696:d 
dense1_2659700:d2
dense1_2659702:2 
output_2659706:2
output_2659708:
identity??Dense0/StatefulPartitionedCall?Dense1/StatefulPartitionedCall?)Embedding_Cluster/StatefulPartitionedCall?;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp?&Embedding_Crop/StatefulPartitionedCall?8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?
)Embedding_Cluster/StatefulPartitionedCallStatefulPartitionedCallinput_clusterembedding_cluster_2659681*
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
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_2659133?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinput_stateembedding_state_2659684*
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
L__inference_Embedding_State_layer_call_and_return_conditional_losses_2659162?
&Embedding_Crop/StatefulPartitionedCallStatefulPartitionedCall
input_cropembedding_crop_2659687*
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
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_2659191?
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
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_2659201?
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
J__inference_Flatten_State_layer_call_and_return_conditional_losses_2659209?
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
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_2659217?
concatted/PartitionedCallPartitionedCall%Flatten_Crop/PartitionedCall:output:0&Flatten_State/PartitionedCall:output:0(Flatten_Cluster/PartitionedCall:output:0input_area_sown_hainput_area_insured_hainput_si_per_ha_inr_hainput_sum_insured_inrinput_indemnity_level*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????A* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatted_layer_call_and_return_conditional_losses_2659232?
Dense0/StatefulPartitionedCallStatefulPartitionedCall"concatted/PartitionedCall:output:0dense0_2659694dense0_2659696*
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
C__inference_Dense0_layer_call_and_return_conditional_losses_2659244?
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
E__inference_Dropout0_layer_call_and_return_conditional_losses_2659255?
Dense1/StatefulPartitionedCallStatefulPartitionedCall!Dropout0/PartitionedCall:output:0dense1_2659700dense1_2659702*
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
C__inference_Dense1_layer_call_and_return_conditional_losses_2659268?
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
E__inference_Dropout1_layer_call_and_return_conditional_losses_2659279?
output/StatefulPartitionedCallStatefulPartitionedCall!Dropout1/PartitionedCall:output:0output_2659706output_2659708*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2659291p
+Embedding_Crop/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_crop_2659687*
_output_shapes

:9*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_crop_2659687*
_output_shapes

:9*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_2659684*
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
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_2659684*
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
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_cluster_2659681*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_cluster_2659681*
_output_shapes

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
:??????????
NoOpNoOp^Dense0/StatefulPartitionedCall^Dense1/StatefulPartitionedCall*^Embedding_Cluster/StatefulPartitionedCall<^Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?^Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp'^Embedding_Crop/StatefulPartitionedCall9^Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp<^Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2V
)Embedding_Cluster/StatefulPartitionedCall)Embedding_Cluster/StatefulPartitionedCall2z
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp2?
>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp2P
&Embedding_Crop/StatefulPartitionedCall&Embedding_Crop/StatefulPartitionedCall2t
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp2z
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_nameinput_Cluster:SO
'
_output_shapes
:?????????
$
_user_specified_name
input_Crop:TP
'
_output_shapes
:?????????
%
_user_specified_nameinput_State:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Area_Insured_Ha:[W
'
_output_shapes
:?????????
,
_user_specified_nameinput_Area_Sown_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Indemnity_Level:_[
'
_output_shapes
:?????????
0
_user_specified_nameinput_SI_Per_Ha_Inr_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinput_Sum_Insured_Inr
?	
?
C__inference_output_layer_call_and_return_conditional_losses_2660517

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
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
?
?
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_2660253

inputs*
embedding_lookup_2660232:9
identity??8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_2660232Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2660232*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2660232*+
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
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_2660232*
_output_shapes

:9*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_2660232*
_output_shapes

:9*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
?
h
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_2660380

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
*__inference_Dropout1_layer_call_fn_2660481

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
E__inference_Dropout1_layer_call_and_return_conditional_losses_2659394o
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
?
?
+__inference_concatted_layer_call_fn_2660392
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????A* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatted_layer_call_and_return_conditional_losses_2659232`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????A"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:Q M
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
:?????????
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????
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
inputs/7
?	
?
C__inference_Dense0_layer_call_and_return_conditional_losses_2659244

inputs0
matmul_readvariableop_resource:Ad-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Ad*
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
:?????????A: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????A
 
_user_specified_nameinputs
?
?
5__inference_Deep_embedded_model_layer_call_fn_2659956
inputs_0_cluster
inputs_0_crop
inputs_0_state
inputs_1_area_insured_ha
inputs_1_area_sown_ha
inputs_1_indemnity_level
inputs_1_si_per_ha_inr_ha
inputs_1_sum_insured_inr
unknown:
	unknown_0:
	unknown_1:9
	unknown_2:Ad
	unknown_3:d
	unknown_4:d2
	unknown_5:2
	unknown_6:2
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0_clusterinputs_0_cropinputs_0_stateinputs_1_area_insured_hainputs_1_area_sown_hainputs_1_indemnity_levelinputs_1_si_per_ha_inr_hainputs_1_sum_insured_inrunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659343o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????
*
_user_specified_nameinputs/0/Cluster:VR
'
_output_shapes
:?????????
'
_user_specified_nameinputs/0/Crop:WS
'
_output_shapes
:?????????
(
_user_specified_nameinputs/0/State:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Area_Insured_Ha:^Z
'
_output_shapes
:?????????
/
_user_specified_nameinputs/1/Area_Sown_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Indemnity_Level:b^
'
_output_shapes
:?????????
3
_user_specified_nameinputs/1/SI_Per_Ha_Inr_Ha:a]
'
_output_shapes
:?????????
2
_user_specified_nameinputs/1/Sum_Insured_Inr
?L
?
 __inference__traced_save_2660715
file_prefix8
4savev2_embedding_crop_embeddings_read_readvariableop9
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
"savev2_count_1_read_readvariableop?
;savev2_adam_embedding_crop_embeddings_m_read_readvariableop@
<savev2_adam_embedding_state_embeddings_m_read_readvariableopB
>savev2_adam_embedding_cluster_embeddings_m_read_readvariableop3
/savev2_adam_dense0_kernel_m_read_readvariableop1
-savev2_adam_dense0_bias_m_read_readvariableop3
/savev2_adam_dense1_kernel_m_read_readvariableop1
-savev2_adam_dense1_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop?
;savev2_adam_embedding_crop_embeddings_v_read_readvariableop@
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*?
value?B?%B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-2/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_embedding_crop_embeddings_read_readvariableop5savev2_embedding_state_embeddings_read_readvariableop7savev2_embedding_cluster_embeddings_read_readvariableop(savev2_dense0_kernel_read_readvariableop&savev2_dense0_bias_read_readvariableop(savev2_dense1_kernel_read_readvariableop&savev2_dense1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop;savev2_adam_embedding_crop_embeddings_m_read_readvariableop<savev2_adam_embedding_state_embeddings_m_read_readvariableop>savev2_adam_embedding_cluster_embeddings_m_read_readvariableop/savev2_adam_dense0_kernel_m_read_readvariableop-savev2_adam_dense0_bias_m_read_readvariableop/savev2_adam_dense1_kernel_m_read_readvariableop-savev2_adam_dense1_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop;savev2_adam_embedding_crop_embeddings_v_read_readvariableop<savev2_adam_embedding_state_embeddings_v_read_readvariableop>savev2_adam_embedding_cluster_embeddings_v_read_readvariableop/savev2_adam_dense0_kernel_v_read_readvariableop-savev2_adam_dense0_bias_v_read_readvariableop/savev2_adam_dense1_kernel_v_read_readvariableop-savev2_adam_dense1_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	?
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
?: :9:::Ad:d:d2:2:2:: : : : : : : : : :9:::Ad:d:d2:2:2::9:::Ad:d:d2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:9:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:Ad: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :$ 

_output_shapes

:9:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:Ad: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:9:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:Ad:  

_output_shapes
:d:$! 

_output_shapes

:d2: "

_output_shapes
:2:$# 

_output_shapes

:2: $

_output_shapes
::%

_output_shapes
: 
?	
?
C__inference_Dense0_layer_call_and_return_conditional_losses_2660424

inputs0
matmul_readvariableop_resource:Ad-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:Ad*
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
:?????????A: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????A
 
_user_specified_nameinputs
?
?
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_2659191

inputs*
embedding_lookup_2659170:9
identity??8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp?;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_2659170Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/2659170*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2659170*+
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
8Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_2659170*
_output_shapes

:9*
dtype0?
)Embedding_Crop/embeddings/Regularizer/AbsAbs@Embedding_Crop/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
;Embedding_Crop/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_2659170*
_output_shapes

:9*
dtype0?
,Embedding_Crop/embeddings/Regularizer/SquareSquareCEmbedding_Crop/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:9~
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
?
c
E__inference_Dropout0_layer_call_and_return_conditional_losses_2659255

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
?
c
*__inference_Dropout0_layer_call_fn_2660434

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
E__inference_Dropout0_layer_call_and_return_conditional_losses_2659427o
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
?
?
__inference_loss_fn_2_2660577V
Dembedding_cluster_embeddings_regularizer_abs_readvariableop_resource:
identity??;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp?>Embedding_Cluster/embeddings/Regularizer/Square/ReadVariableOps
.Embedding_Cluster/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
;Embedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpDembedding_cluster_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0?
,Embedding_Cluster/embeddings/Regularizer/AbsAbsCEmbedding_Cluster/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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

:*
dtype0?
/Embedding_Cluster/embeddings/Regularizer/SquareSquareFEmbedding_Cluster/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:?
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
?	
d
E__inference_Dropout1_layer_call_and_return_conditional_losses_2660498

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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
input_Area_Insured_Ha>
'serving_default_input_Area_Insured_Ha:0?????????
Q
input_Area_Sown_Ha;
$serving_default_input_Area_Sown_Ha:0?????????
G
input_Cluster6
serving_default_input_Cluster:0?????????
A

input_Crop3
serving_default_input_Crop:0?????????
W
input_Indemnity_Level>
'serving_default_input_Indemnity_Level:0?????????
Y
input_SI_Per_Ha_Inr_Ha?
(serving_default_input_SI_Per_Ha_Inr_Ha:0?????????
C
input_State4
serving_default_input_State:0?????????
W
input_Sum_Insured_Inr>
'serving_default_input_Sum_Insured_Inr:0?????????:
output0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer_with_weights-3
layer-15
layer-16
layer_with_weights-4
layer-17
layer-18
layer_with_weights-5
layer-19
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 
embeddings
!	variables
"trainable_variables
#regularization_losses
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
%
embeddings
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
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
6	variables
7trainable_variables
8regularization_losses
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Titer

Ubeta_1

Vbeta_2
	Wdecay
Xlearning_ratem? m?%m?:m?;m?Dm?Em?Nm?Om?v? v?%v?:v?;v?Dv?Ev?Nv?Ov?"
	optimizer
_
0
 1
%2
:3
;4
D5
E6
N7
O8"
trackable_list_wrapper
_
0
 1
%2
:3
;4
D5
E6
N7
O8"
trackable_list_wrapper
8
?0
?1
?2"
trackable_list_wrapper
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:)92Embedding_Crop/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*2Embedding_State/embeddings
'
 0"
trackable_list_wrapper
'
 0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
!	variables
"trainable_variables
#regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,2Embedding_Cluster/embeddings
'
%0"
trackable_list_wrapper
'
%0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
&	variables
'trainable_variables
(regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
*	variables
+trainable_variables
,regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
.	variables
/trainable_variables
0regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
2	variables
3trainable_variables
4regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
?layer_metrics
6	variables
7trainable_variables
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:Ad2Dense0/kernel
:d2Dense0/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
@	variables
Atrainable_variables
Bregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:d22Dense1/kernel
:22Dense1/bias
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
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
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:22output/kernel
:2output/bias
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
19"
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
?0"
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
?0"
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
?0"
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
0:.92 Adam/Embedding_Crop/embeddings/m
1:/2!Adam/Embedding_State/embeddings/m
3:12#Adam/Embedding_Cluster/embeddings/m
$:"Ad2Adam/Dense0/kernel/m
:d2Adam/Dense0/bias/m
$:"d22Adam/Dense1/kernel/m
:22Adam/Dense1/bias/m
$:"22Adam/output/kernel/m
:2Adam/output/bias/m
0:.92 Adam/Embedding_Crop/embeddings/v
1:/2!Adam/Embedding_State/embeddings/v
3:12#Adam/Embedding_Cluster/embeddings/v
$:"Ad2Adam/Dense0/kernel/v
:d2Adam/Dense0/bias/v
$:"d22Adam/Dense1/kernel/v
:22Adam/Dense1/bias/v
$:"22Adam/output/kernel/v
:2Adam/output/bias/v
?2?
5__inference_Deep_embedded_model_layer_call_fn_2659364
5__inference_Deep_embedded_model_layer_call_fn_2659956
5__inference_Deep_embedded_model_layer_call_fn_2659986
5__inference_Deep_embedded_model_layer_call_fn_2659671?
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
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2660089
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2660206
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659757
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659843?
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
?B?
"__inference__wrapped_model_2659087input_Cluster
input_Cropinput_Stateinput_Area_Insured_Hainput_Area_Sown_Hainput_Indemnity_Levelinput_SI_Per_Ha_Inr_Hainput_Sum_Insured_Inr"?
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
0__inference_Embedding_Crop_layer_call_fn_2660228?
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
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_2660253?
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
1__inference_Embedding_State_layer_call_fn_2660275?
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
L__inference_Embedding_State_layer_call_and_return_conditional_losses_2660300?
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
3__inference_Embedding_Cluster_layer_call_fn_2660322?
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
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_2660347?
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
.__inference_Flatten_Crop_layer_call_fn_2660352?
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
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_2660358?
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
/__inference_Flatten_State_layer_call_fn_2660363?
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
J__inference_Flatten_State_layer_call_and_return_conditional_losses_2660369?
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
1__inference_Flatten_Cluster_layer_call_fn_2660374?
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
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_2660380?
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
+__inference_concatted_layer_call_fn_2660392?
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
F__inference_concatted_layer_call_and_return_conditional_losses_2660405?
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
(__inference_Dense0_layer_call_fn_2660414?
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
C__inference_Dense0_layer_call_and_return_conditional_losses_2660424?
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
*__inference_Dropout0_layer_call_fn_2660429
*__inference_Dropout0_layer_call_fn_2660434?
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
E__inference_Dropout0_layer_call_and_return_conditional_losses_2660439
E__inference_Dropout0_layer_call_and_return_conditional_losses_2660451?
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
(__inference_Dense1_layer_call_fn_2660460?
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
C__inference_Dense1_layer_call_and_return_conditional_losses_2660471?
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
*__inference_Dropout1_layer_call_fn_2660476
*__inference_Dropout1_layer_call_fn_2660481?
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
E__inference_Dropout1_layer_call_and_return_conditional_losses_2660486
E__inference_Dropout1_layer_call_and_return_conditional_losses_2660498?
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
(__inference_output_layer_call_fn_2660507?
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
C__inference_output_layer_call_and_return_conditional_losses_2660517?
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
__inference_loss_fn_0_2660537?
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
__inference_loss_fn_1_2660557?
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
__inference_loss_fn_2_2660577?
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
?B?
%__inference_signature_wrapper_2659926input_Area_Insured_Hainput_Area_Sown_Hainput_Cluster
input_Cropinput_Indemnity_Levelinput_SI_Per_Ha_Inr_Hainput_Stateinput_Sum_Insured_Inr"?
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
 ?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659757?	% :;DENO???
???
???
???
2
Cluster'?$
input_Cluster?????????
,
Crop$?!

input_Crop?????????
.
State%?"
input_State?????????
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
0?????????
? ?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2659843?	% :;DENO???
???
???
???
2
Cluster'?$
input_Cluster?????????
,
Crop$?!

input_Crop?????????
.
State%?"
input_State?????????
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
0?????????
? ?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2660089?	% :;DENO???
???
???
???
5
Cluster*?'
inputs/0/Cluster?????????
/
Crop'?$
inputs/0/Crop?????????
1
State(?%
inputs/0/State?????????
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
0?????????
? ?
P__inference_Deep_embedded_model_layer_call_and_return_conditional_losses_2660206?	% :;DENO???
???
???
???
5
Cluster*?'
inputs/0/Cluster?????????
/
Crop'?$
inputs/0/Crop?????????
1
State(?%
inputs/0/State?????????
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
0?????????
? ?
5__inference_Deep_embedded_model_layer_call_fn_2659364?	% :;DENO???
???
???
???
2
Cluster'?$
input_Cluster?????????
,
Crop$?!

input_Crop?????????
.
State%?"
input_State?????????
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
? "???????????
5__inference_Deep_embedded_model_layer_call_fn_2659671?	% :;DENO???
???
???
???
2
Cluster'?$
input_Cluster?????????
,
Crop$?!

input_Crop?????????
.
State%?"
input_State?????????
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
? "???????????
5__inference_Deep_embedded_model_layer_call_fn_2659956?	% :;DENO???
???
???
???
5
Cluster*?'
inputs/0/Cluster?????????
/
Crop'?$
inputs/0/Crop?????????
1
State(?%
inputs/0/State?????????
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
? "???????????
5__inference_Deep_embedded_model_layer_call_fn_2659986?	% :;DENO???
???
???
???
5
Cluster*?'
inputs/0/Cluster?????????
/
Crop'?$
inputs/0/Crop?????????
1
State(?%
inputs/0/State?????????
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
? "???????????
C__inference_Dense0_layer_call_and_return_conditional_losses_2660424\:;/?,
%?"
 ?
inputs?????????A
? "%?"
?
0?????????d
? {
(__inference_Dense0_layer_call_fn_2660414O:;/?,
%?"
 ?
inputs?????????A
? "??????????d?
C__inference_Dense1_layer_call_and_return_conditional_losses_2660471\DE/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????2
? {
(__inference_Dense1_layer_call_fn_2660460ODE/?,
%?"
 ?
inputs?????????d
? "??????????2?
E__inference_Dropout0_layer_call_and_return_conditional_losses_2660439\3?0
)?&
 ?
inputs?????????d
p 
? "%?"
?
0?????????d
? ?
E__inference_Dropout0_layer_call_and_return_conditional_losses_2660451\3?0
)?&
 ?
inputs?????????d
p
? "%?"
?
0?????????d
? }
*__inference_Dropout0_layer_call_fn_2660429O3?0
)?&
 ?
inputs?????????d
p 
? "??????????d}
*__inference_Dropout0_layer_call_fn_2660434O3?0
)?&
 ?
inputs?????????d
p
? "??????????d?
E__inference_Dropout1_layer_call_and_return_conditional_losses_2660486\3?0
)?&
 ?
inputs?????????2
p 
? "%?"
?
0?????????2
? ?
E__inference_Dropout1_layer_call_and_return_conditional_losses_2660498\3?0
)?&
 ?
inputs?????????2
p
? "%?"
?
0?????????2
? }
*__inference_Dropout1_layer_call_fn_2660476O3?0
)?&
 ?
inputs?????????2
p 
? "??????????2}
*__inference_Dropout1_layer_call_fn_2660481O3?0
)?&
 ?
inputs?????????2
p
? "??????????2?
N__inference_Embedding_Cluster_layer_call_and_return_conditional_losses_2660347_%/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
3__inference_Embedding_Cluster_layer_call_fn_2660322R%/?,
%?"
 ?
inputs?????????
? "???????????
K__inference_Embedding_Crop_layer_call_and_return_conditional_losses_2660253_/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
0__inference_Embedding_Crop_layer_call_fn_2660228R/?,
%?"
 ?
inputs?????????
? "???????????
L__inference_Embedding_State_layer_call_and_return_conditional_losses_2660300_ /?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
1__inference_Embedding_State_layer_call_fn_2660275R /?,
%?"
 ?
inputs?????????
? "???????????
L__inference_Flatten_Cluster_layer_call_and_return_conditional_losses_2660380\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
1__inference_Flatten_Cluster_layer_call_fn_2660374O3?0
)?&
$?!
inputs?????????
? "???????????
I__inference_Flatten_Crop_layer_call_and_return_conditional_losses_2660358\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
.__inference_Flatten_Crop_layer_call_fn_2660352O3?0
)?&
$?!
inputs?????????
? "???????????
J__inference_Flatten_State_layer_call_and_return_conditional_losses_2660369\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ?
/__inference_Flatten_State_layer_call_fn_2660363O3?0
)?&
$?!
inputs?????????
? "???????????
"__inference__wrapped_model_2659087?	% :;DENO???
???
???
???
2
Cluster'?$
input_Cluster?????????
,
Crop$?!

input_Crop?????????
.
State%?"
input_State?????????
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
output??????????
F__inference_concatted_layer_call_and_return_conditional_losses_2660405????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
? "%?"
?
0?????????A
? ?
+__inference_concatted_layer_call_fn_2660392????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
"?
inputs/4?????????
"?
inputs/5?????????
"?
inputs/6?????????
"?
inputs/7?????????
? "??????????A<
__inference_loss_fn_0_2660537?

? 
? "? <
__inference_loss_fn_1_2660557 ?

? 
? "? <
__inference_loss_fn_2_2660577%?

? 
? "? ?
C__inference_output_layer_call_and_return_conditional_losses_2660517\NO/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? {
(__inference_output_layer_call_fn_2660507ONO/?,
%?"
 ?
inputs?????????2
? "???????????
%__inference_signature_wrapper_2659926?	% :;DENO???
? 
???
H
input_Area_Insured_Ha/?,
input_Area_Insured_Ha?????????
B
input_Area_Sown_Ha,?)
input_Area_Sown_Ha?????????
8
input_Cluster'?$
input_Cluster?????????
2

input_Crop$?!

input_Crop?????????
H
input_Indemnity_Level/?,
input_Indemnity_Level?????????
J
input_SI_Per_Ha_Inr_Ha0?-
input_SI_Per_Ha_Inr_Ha?????????
4
input_State%?"
input_State?????????
H
input_Sum_Insured_Inr/?,
input_Sum_Insured_Inr?????????"/?,
*
output ?
output?????????