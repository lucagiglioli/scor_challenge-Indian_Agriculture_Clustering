ÍÁ
º
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
Á
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Þ

Embedding_State/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameEmbedding_State/embeddings

.Embedding_State/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_State/embeddings*
_output_shapes

:*
dtype0

Embedding_District/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	â*.
shared_nameEmbedding_District/embeddings

1Embedding_District/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_District/embeddings*
_output_shapes
:	â*
dtype0

!Embedding_Sub_District/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ô&*2
shared_name#!Embedding_Sub_District/embeddings

5Embedding_Sub_District/embeddings/Read/ReadVariableOpReadVariableOp!Embedding_Sub_District/embeddings*
_output_shapes
:	ô&*
dtype0

Embedding_Block/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	óC*+
shared_nameEmbedding_Block/embeddings

.Embedding_Block/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_Block/embeddings*
_output_shapes
:	óC*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ó
valueÉBÆ B¿
ö
layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
 
 
 
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
b

embeddings
	variables
trainable_variables
 regularization_losses
!	keras_api
b
"
embeddings
#	variables
$trainable_variables
%regularization_losses
&	keras_api
R
'	variables
(trainable_variables
)regularization_losses
*	keras_api
R
+	variables
,trainable_variables
-regularization_losses
.	keras_api
R
/	variables
0trainable_variables
1regularization_losses
2	keras_api
R
3	variables
4trainable_variables
5regularization_losses
6	keras_api
R
7	variables
8trainable_variables
9regularization_losses
:	keras_api

0
1
2
"3

0
1
2
"3
 
­
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
 
jh
VARIABLE_VALUEEmbedding_State/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
mk
VARIABLE_VALUEEmbedding_District/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
qo
VARIABLE_VALUE!Embedding_Sub_District/embeddings:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
 regularization_losses
jh
VARIABLE_VALUEEmbedding_Block/embeddings:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUE

"0

"0
 
­
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
#	variables
$trainable_variables
%regularization_losses
 
 
 
­
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
'	variables
(trainable_variables
)regularization_losses
 
 
 
­
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
+	variables
,trainable_variables
-regularization_losses
 
 
 
­
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
/	variables
0trainable_variables
1regularization_losses
 
 
 
­
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
3	variables
4trainable_variables
5regularization_losses
 
 
 
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
^
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
~
serving_default_input_BlockPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

serving_default_input_DistrictPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
~
serving_default_input_StatePlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

"serving_default_input_Sub_DistrictPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_Blockserving_default_input_Districtserving_default_input_State"serving_default_input_Sub_DistrictEmbedding_Block/embeddings!Embedding_Sub_District/embeddingsEmbedding_District/embeddingsEmbedding_State/embeddings*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_3028555
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
í
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename.Embedding_State/embeddings/Read/ReadVariableOp1Embedding_District/embeddings/Read/ReadVariableOp5Embedding_Sub_District/embeddings/Read/ReadVariableOp.Embedding_Block/embeddings/Read/ReadVariableOpConst*
Tin

2*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_3029156

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameEmbedding_State/embeddingsEmbedding_District/embeddings!Embedding_Sub_District/embeddingsEmbedding_Block/embeddings*
Tin	
2*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_3029178õÉ
µ

1__inference_Embedding_State_layer_call_fn_3028811

inputs
unknown:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
"
»
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935

inputs+
embedding_lookup_3027914:	ô&
identity¢@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp¢CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
embedding_lookupResourceGatherembedding_lookup_3027914Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3027914*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3027914*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3027914*
_output_shapes
:	ô&*
dtype0¬
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ð
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
×#<Ó
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ð
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3027914*
_output_shapes
:	ô&*
dtype0µ
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Õ
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
×#<Ù
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Í
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOpA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦

Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028282

inputs
inputs_1
inputs_2
inputs_3*
embedding_block_3028204:	óC1
embedding_sub_district_3028207:	ô&-
embedding_district_3028210:	â)
embedding_state_3028213:
identity¢'Embedding_Block/StatefulPartitionedCall¢9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp¢*Embedding_District/StatefulPartitionedCall¢<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp¢?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp¢'Embedding_State/StatefulPartitionedCall¢9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp¢.Embedding_Sub_District/StatefulPartitionedCall¢@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp¢CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpû
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_block_3028204*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinputs_3embedding_sub_district_3028207*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_district_3028210*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964ý
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinputs_2embedding_state_3028213*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993ä
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3028003ë
flatten_1/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011ï
flatten_2/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019è
flatten_3/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027Ý
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3028213*
_output_shapes

:*
dtype0
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3028213*
_output_shapes

:*
dtype0¦
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_3028210*
_output_shapes
:	â*
dtype0¤
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ä
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
×#<Ç
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ä
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_3028210*
_output_shapes
:	â*
dtype0­
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       É
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
×#<Í
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Á
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_3028207*
_output_shapes
:	ô&*
dtype0¬
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ð
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
×#<Ó
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ð
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: £
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_3028207*
_output_shapes
:	ô&*
dtype0µ
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Õ
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
×#<Ù
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Í
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_3028204*
_output_shapes
:	óC*
dtype0
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_3028204*
_output_shapes
:	óC*
dtype0§
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPø
NoOpNoOp(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

%__inference_signature_wrapper_3028555
input_block
input_district
input_state
input_sub_district
unknown:	óC
	unknown_0:	ô&
	unknown_1:	â
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_blockinput_districtinput_stateinput_sub_districtunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_3027868o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinput_District:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_State:[W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinput_Sub_District
ó
¦
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906

inputs+
embedding_lookup_3027885:	óC
identity¢9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
embedding_lookupResourceGatherembedding_lookup_3027885Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3027885*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3027885*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3027885*
_output_shapes
:	óC*
dtype0
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3027885*
_output_shapes
:	óC*
dtype0§
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
E
)__inference_flatten_layer_call_fn_3028982

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3028003`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_layer_call_and_return_conditional_losses_3028988

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼

Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038

inputs
inputs_1
inputs_2
inputs_3
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

®
>__inference_model_feature_representation_layer_call_fn_3028112
input_block
input_district
input_state
input_sub_district
unknown:	óC
	unknown_0:	ô&
	unknown_1:	â
	unknown_2:
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinput_blockinput_districtinput_stateinput_sub_districtunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028101o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinput_District:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_State:[W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinput_Sub_District

Ù
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028688
inputs_0_block
inputs_0_district
inputs_0_state
inputs_0_sub_district;
(embedding_block_embedding_lookup_3028594:	óCB
/embedding_sub_district_embedding_lookup_3028600:	ô&>
+embedding_district_embedding_lookup_3028606:	â:
(embedding_state_embedding_lookup_3028612:
identity¢ Embedding_Block/embedding_lookup¢9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp¢#Embedding_District/embedding_lookup¢<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp¢?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp¢ Embedding_State/embedding_lookup¢9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp¢'Embedding_Sub_District/embedding_lookup¢@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp¢CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpm
Embedding_Block/CastCastinputs_0_block*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
 Embedding_Block/embedding_lookupResourceGather(embedding_block_embedding_lookup_3028594Embedding_Block/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/3028594*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ó
)Embedding_Block/embedding_lookup/IdentityIdentity)Embedding_Block/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/3028594*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
+Embedding_Block/embedding_lookup/Identity_1Identity2Embedding_Block/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
Embedding_Sub_District/CastCastinputs_0_sub_district*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'Embedding_Sub_District/embedding_lookupResourceGather/embedding_sub_district_embedding_lookup_3028600Embedding_Sub_District/Cast:y:0*
Tindices0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/3028600*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0è
0Embedding_Sub_District/embedding_lookup/IdentityIdentity0Embedding_Sub_District/embedding_lookup:output:0*
T0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/3028600*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
2Embedding_Sub_District/embedding_lookup/Identity_1Identity9Embedding_Sub_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
Embedding_District/CastCastinputs_0_district*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#Embedding_District/embedding_lookupResourceGather+embedding_district_embedding_lookup_3028606Embedding_District/Cast:y:0*
Tindices0*>
_class4
20loc:@Embedding_District/embedding_lookup/3028606*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ü
,Embedding_District/embedding_lookup/IdentityIdentity,Embedding_District/embedding_lookup:output:0*
T0*>
_class4
20loc:@Embedding_District/embedding_lookup/3028606*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
.Embedding_District/embedding_lookup/Identity_1Identity5Embedding_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
Embedding_State/CastCastinputs_0_state*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
 Embedding_State/embedding_lookupResourceGather(embedding_state_embedding_lookup_3028612Embedding_State/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3028612*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ó
)Embedding_State/embedding_lookup/IdentityIdentity)Embedding_State/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3028612*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
+Embedding_State/embedding_lookup/Identity_1Identity2Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten/ReshapeReshape4Embedding_State/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¡
flatten_1/ReshapeReshape7Embedding_District/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¥
flatten_2/ReshapeReshape;Embedding_Sub_District/embedding_lookup/Identity_1:output:0flatten_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_3/ReshapeReshape4Embedding_Block/embedding_lookup/Identity_1:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 concatted_clustering/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :û
concatted_clustering/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0flatten_2/Reshape:output:0flatten_3/Reshape:output:0)concatted_clustering/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPq
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¢
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3028612*
_output_shapes

:*
dtype0
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ¥
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3028612*
_output_shapes

:*
dtype0¦
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_3028606*
_output_shapes
:	â*
dtype0¤
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ä
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
×#<Ç
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ä
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ¬
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_3028606*
_output_shapes
:	â*
dtype0­
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       É
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
×#<Í
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Á
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_3028600*
_output_shapes
:	ô&*
dtype0¬
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ð
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
×#<Ó
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ð
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ´
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_3028600*
_output_shapes
:	ô&*
dtype0µ
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Õ
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
×#<Ù
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Í
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_3028594*
_output_shapes
:	óC*
dtype0
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ¦
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_3028594*
_output_shapes
:	óC*
dtype0§
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: s
IdentityIdentity$concatted_clustering/concat:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPÜ
NoOpNoOp!^Embedding_Block/embedding_lookup:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp$^Embedding_District/embedding_lookup=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp!^Embedding_State/embedding_lookup:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_Sub_District/embedding_lookupA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 2D
 Embedding_Block/embedding_lookup Embedding_Block/embedding_lookup2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2J
#Embedding_District/embedding_lookup#Embedding_District/embedding_lookup2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2D
 Embedding_State/embedding_lookup Embedding_State/embedding_lookup2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_Sub_District/embedding_lookup'Embedding_Sub_District/embedding_lookup2
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinputs/0/Block:ZV
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/0/Sub_District
ô
¥
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028477
input_block
input_district
input_state
input_sub_district*
embedding_block_3028399:	óC1
embedding_sub_district_3028402:	ô&-
embedding_district_3028405:	â)
embedding_state_3028408:
identity¢'Embedding_Block/StatefulPartitionedCall¢9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp¢*Embedding_District/StatefulPartitionedCall¢<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp¢?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp¢'Embedding_State/StatefulPartitionedCall¢9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp¢.Embedding_Sub_District/StatefulPartitionedCall¢@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp¢CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinput_blockembedding_block_3028399*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinput_sub_districtembedding_sub_district_3028402*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinput_districtembedding_district_3028405*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinput_stateembedding_state_3028408*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993ä
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3028003ë
flatten_1/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011ï
flatten_2/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019è
flatten_3/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027Ý
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3028408*
_output_shapes

:*
dtype0
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3028408*
_output_shapes

:*
dtype0¦
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_3028405*
_output_shapes
:	â*
dtype0¤
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ä
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
×#<Ç
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ä
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_3028405*
_output_shapes
:	â*
dtype0­
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       É
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
×#<Í
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Á
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_3028402*
_output_shapes
:	ô&*
dtype0¬
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ð
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
×#<Ó
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ð
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: £
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_3028402*
_output_shapes
:	ô&*
dtype0µ
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Õ
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
×#<Ù
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Í
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_3028399*
_output_shapes
:	óC*
dtype0
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_3028399*
_output_shapes
:	óC*
dtype0§
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPø
NoOpNoOp(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinput_District:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_State:[W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinput_Sub_District
¾
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_3029010

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_layer_call_and_return_conditional_losses_3028003

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä

8__inference_Embedding_Sub_District_layer_call_fn_3028905

inputs
unknown:	ô&
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
"
»
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3028930

inputs+
embedding_lookup_3028909:	ô&
identity¢@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp¢CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
embedding_lookupResourceGatherembedding_lookup_3028909Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3028909*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3028909*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3028909*
_output_shapes
:	ô&*
dtype0¬
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ð
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
×#<Ó
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ð
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3028909*
_output_shapes
:	ô&*
dtype0µ
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Õ
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
×#<Ù
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Í
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOpA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è 
¯
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3028883

inputs+
embedding_lookup_3028862:	â
identity¢<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp¢?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
embedding_lookupResourceGatherembedding_lookup_3028862Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3028862*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3028862*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3028862*
_output_shapes
:	â*
dtype0¤
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ä
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
×#<Ç
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ä
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3028862*
_output_shapes
:	â*
dtype0­
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       É
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
×#<Í
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Á
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
¥
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3028836

inputs*
embedding_lookup_3028815:
identity¢9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
embedding_lookupResourceGatherembedding_lookup_3028815Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3028815*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3028815*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3028815*
_output_shapes

:*
dtype0
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3028815*
_output_shapes

:*
dtype0¦
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è 
¯
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964

inputs+
embedding_lookup_3027943:	â
identity¢<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp¢?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
embedding_lookupResourceGatherembedding_lookup_3027943Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3027943*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3027943*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3027943*
_output_shapes
:	â*
dtype0¤
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ä
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
×#<Ç
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ä
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3027943*
_output_shapes
:	â*
dtype0­
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       É
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
×#<Í
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Á
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
G
+__inference_flatten_2_layer_call_fn_3029004

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
G
+__inference_flatten_1_layer_call_fn_3028993

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

®
>__inference_model_feature_representation_layer_call_fn_3028309
input_block
input_district
input_state
input_sub_district
unknown:	óC
	unknown_0:	ô&
	unknown_1:	â
	unknown_2:
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCallinput_blockinput_districtinput_stateinput_sub_districtunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028282o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinput_District:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_State:[W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinput_Sub_District
¾
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_3029021

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶

1__inference_Embedding_Block_layer_call_fn_3028952

inputs
unknown:	óC
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028999

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
º
>__inference_model_feature_representation_layer_call_fn_3028571
inputs_0_block
inputs_0_district
inputs_0_state
inputs_0_sub_district
unknown:	óC
	unknown_0:	ô&
	unknown_1:	â
	unknown_2:
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinputs_0_blockinputs_0_districtinputs_0_stateinputs_0_sub_districtunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028101o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinputs/0/Block:ZV
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/0/Sub_District
¬
G
+__inference_flatten_3_layer_call_fn_3029015

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ù
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028789
inputs_0_block
inputs_0_district
inputs_0_state
inputs_0_sub_district;
(embedding_block_embedding_lookup_3028695:	óCB
/embedding_sub_district_embedding_lookup_3028701:	ô&>
+embedding_district_embedding_lookup_3028707:	â:
(embedding_state_embedding_lookup_3028713:
identity¢ Embedding_Block/embedding_lookup¢9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp¢#Embedding_District/embedding_lookup¢<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp¢?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp¢ Embedding_State/embedding_lookup¢9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp¢'Embedding_Sub_District/embedding_lookup¢@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp¢CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpm
Embedding_Block/CastCastinputs_0_block*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
 Embedding_Block/embedding_lookupResourceGather(embedding_block_embedding_lookup_3028695Embedding_Block/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/3028695*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ó
)Embedding_Block/embedding_lookup/IdentityIdentity)Embedding_Block/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/3028695*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
+Embedding_Block/embedding_lookup/Identity_1Identity2Embedding_Block/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
Embedding_Sub_District/CastCastinputs_0_sub_district*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'Embedding_Sub_District/embedding_lookupResourceGather/embedding_sub_district_embedding_lookup_3028701Embedding_Sub_District/Cast:y:0*
Tindices0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/3028701*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0è
0Embedding_Sub_District/embedding_lookup/IdentityIdentity0Embedding_Sub_District/embedding_lookup:output:0*
T0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/3028701*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
2Embedding_Sub_District/embedding_lookup/Identity_1Identity9Embedding_Sub_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
Embedding_District/CastCastinputs_0_district*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#Embedding_District/embedding_lookupResourceGather+embedding_district_embedding_lookup_3028707Embedding_District/Cast:y:0*
Tindices0*>
_class4
20loc:@Embedding_District/embedding_lookup/3028707*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ü
,Embedding_District/embedding_lookup/IdentityIdentity,Embedding_District/embedding_lookup:output:0*
T0*>
_class4
20loc:@Embedding_District/embedding_lookup/3028707*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
.Embedding_District/embedding_lookup/Identity_1Identity5Embedding_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
Embedding_State/CastCastinputs_0_state*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
 Embedding_State/embedding_lookupResourceGather(embedding_state_embedding_lookup_3028713Embedding_State/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3028713*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ó
)Embedding_State/embedding_lookup/IdentityIdentity)Embedding_State/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3028713*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
+Embedding_State/embedding_lookup/Identity_1Identity2Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten/ReshapeReshape4Embedding_State/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¡
flatten_1/ReshapeReshape7Embedding_District/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¥
flatten_2/ReshapeReshape;Embedding_Sub_District/embedding_lookup/Identity_1:output:0flatten_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_3/ReshapeReshape4Embedding_Block/embedding_lookup/Identity_1:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
 concatted_clustering/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :û
concatted_clustering/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0flatten_2/Reshape:output:0flatten_3/Reshape:output:0)concatted_clustering/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPq
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¢
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3028713*
_output_shapes

:*
dtype0
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ¥
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3028713*
_output_shapes

:*
dtype0¦
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_3028707*
_output_shapes
:	â*
dtype0¤
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ä
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
×#<Ç
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ä
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ¬
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_3028707*
_output_shapes
:	â*
dtype0­
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       É
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
×#<Í
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Á
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_3028701*
_output_shapes
:	ô&*
dtype0¬
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ð
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
×#<Ó
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ð
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ´
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_3028701*
_output_shapes
:	ô&*
dtype0µ
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Õ
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
×#<Ù
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Í
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_3028695*
_output_shapes
:	óC*
dtype0
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ¦
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_3028695*
_output_shapes
:	óC*
dtype0§
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: s
IdentityIdentity$concatted_clustering/concat:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPÜ
NoOpNoOp!^Embedding_Block/embedding_lookup:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp$^Embedding_District/embedding_lookup=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp!^Embedding_State/embedding_lookup:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_Sub_District/embedding_lookupA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 2D
 Embedding_Block/embedding_lookup Embedding_Block/embedding_lookup2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2J
#Embedding_District/embedding_lookup#Embedding_District/embedding_lookup2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2D
 Embedding_State/embedding_lookup Embedding_State/embedding_lookup2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_Sub_District/embedding_lookup'Embedding_Sub_District/embedding_lookup2
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinputs/0/Block:ZV
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/0/Sub_District
È

Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3029038
inputs_0
inputs_1
inputs_2
inputs_3
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/3
·

__inference_loss_fn_0_3029058T
Bembedding_state_embeddings_regularizer_abs_readvariableop_resource:
identity¢9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpq
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¼
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpBembedding_state_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ¿
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpBembedding_state_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0¦
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: n
IdentityIdentity0Embedding_State/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: Á
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
½
~
6__inference_concatted_clustering_layer_call_fn_3029029
inputs_0
inputs_1
inputs_2
inputs_3
identityâ
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/3
¼

__inference_loss_fn_3_3029118U
Bembedding_block_embeddings_regularizer_abs_readvariableop_resource:	óC
identity¢9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpq
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpBembedding_block_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	óC*
dtype0
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: À
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpBembedding_block_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	óC*
dtype0§
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: n
IdentityIdentity0Embedding_Block/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: Á
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
±
ã
 __inference__traced_save_3029156
file_prefix9
5savev2_embedding_state_embeddings_read_readvariableop<
8savev2_embedding_district_embeddings_read_readvariableop@
<savev2_embedding_sub_district_embeddings_read_readvariableop9
5savev2_embedding_block_embeddings_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ú
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHw
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_embedding_state_embeddings_read_readvariableop8savev2_embedding_district_embeddings_read_readvariableop<savev2_embedding_sub_district_embeddings_read_readvariableop5savev2_embedding_block_embeddings_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*B
_input_shapes1
/: ::	â:	ô&:	óC: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::%!

_output_shapes
:	â:%!

_output_shapes
:	ô&:%!

_output_shapes
:	óC:

_output_shapes
: 
ß

__inference_loss_fn_2_3029098\
Iembedding_sub_district_embeddings_regularizer_abs_readvariableop_resource:	ô&
identity¢@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp¢CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpx
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ë
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpIembedding_sub_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	ô&*
dtype0¬
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ð
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
×#<Ó
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ð
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Î
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpIembedding_sub_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	ô&*
dtype0µ
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Õ
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
×#<Ù
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Í
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: u
IdentityIdentity7Embedding_Sub_District/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: Ï
NoOpNoOpA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp
Þ
ª
#__inference__traced_restore_3029178
file_prefix=
+assignvariableop_embedding_state_embeddings:C
0assignvariableop_1_embedding_district_embeddings:	âG
4assignvariableop_2_embedding_sub_district_embeddings:	ô&@
-assignvariableop_3_embedding_block_embeddings:	óC

identity_5¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3ý
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHz
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B ·
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp+assignvariableop_embedding_state_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp0assignvariableop_1_embedding_district_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_2AssignVariableOp4assignvariableop_2_embedding_sub_district_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp-assignvariableop_3_embedding_block_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¬

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¦

Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028101

inputs
inputs_1
inputs_2
inputs_3*
embedding_block_3027907:	óC1
embedding_sub_district_3027936:	ô&-
embedding_district_3027965:	â)
embedding_state_3027994:
identity¢'Embedding_Block/StatefulPartitionedCall¢9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp¢*Embedding_District/StatefulPartitionedCall¢<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp¢?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp¢'Embedding_State/StatefulPartitionedCall¢9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp¢.Embedding_Sub_District/StatefulPartitionedCall¢@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp¢CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpû
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_block_3027907*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinputs_3embedding_sub_district_3027936*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_district_3027965*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964ý
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinputs_2embedding_state_3027994*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993ä
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3028003ë
flatten_1/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011ï
flatten_2/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019è
flatten_3/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027Ý
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3027994*
_output_shapes

:*
dtype0
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3027994*
_output_shapes

:*
dtype0¦
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_3027965*
_output_shapes
:	â*
dtype0¤
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ä
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
×#<Ç
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ä
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_3027965*
_output_shapes
:	â*
dtype0­
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       É
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
×#<Í
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Á
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_3027936*
_output_shapes
:	ô&*
dtype0¬
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ð
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
×#<Ó
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ð
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: £
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_3027936*
_output_shapes
:	ô&*
dtype0µ
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Õ
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
×#<Ù
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Í
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_3027907*
_output_shapes
:	óC*
dtype0
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_3027907*
_output_shapes
:	óC*
dtype0§
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPø
NoOpNoOp(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô
¥
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028393
input_block
input_district
input_state
input_sub_district*
embedding_block_3028315:	óC1
embedding_sub_district_3028318:	ô&-
embedding_district_3028321:	â)
embedding_state_3028324:
identity¢'Embedding_Block/StatefulPartitionedCall¢9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp¢*Embedding_District/StatefulPartitionedCall¢<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp¢?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp¢'Embedding_State/StatefulPartitionedCall¢9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp¢.Embedding_Sub_District/StatefulPartitionedCall¢@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp¢CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinput_blockembedding_block_3028315*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinput_sub_districtembedding_sub_district_3028318*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinput_districtembedding_district_3028321*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinput_stateembedding_state_3028324*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993ä
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3028003ë
flatten_1/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011ï
flatten_2/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019è
flatten_3/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027Ý
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3028324*
_output_shapes

:*
dtype0
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3028324*
_output_shapes

:*
dtype0¦
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_3028321*
_output_shapes
:	â*
dtype0¤
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ä
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
×#<Ç
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ä
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_3028321*
_output_shapes
:	â*
dtype0­
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       É
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
×#<Í
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Á
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_3028318*
_output_shapes
:	ô&*
dtype0¬
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ð
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
×#<Ó
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ð
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: £
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_3028318*
_output_shapes
:	ô&*
dtype0µ
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	ô&
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Õ
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
×#<Ù
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Í
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_3028315*
_output_shapes
:	óC*
dtype0
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_3028315*
_output_shapes
:	óC*
dtype0§
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPø
NoOpNoOp(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinput_District:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_State:[W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinput_Sub_District
¼

4__inference_Embedding_District_layer_call_fn_3028858

inputs
unknown:	â
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°C
þ
"__inference__wrapped_model_3027868
input_block
input_district
input_state
input_sub_districtX
Emodel_feature_representation_embedding_block_embedding_lookup_3027834:	óC_
Lmodel_feature_representation_embedding_sub_district_embedding_lookup_3027840:	ô&[
Hmodel_feature_representation_embedding_district_embedding_lookup_3027846:	âW
Emodel_feature_representation_embedding_state_embedding_lookup_3027852:
identity¢=model_feature_representation/Embedding_Block/embedding_lookup¢@model_feature_representation/Embedding_District/embedding_lookup¢=model_feature_representation/Embedding_State/embedding_lookup¢Dmodel_feature_representation/Embedding_Sub_District/embedding_lookup
1model_feature_representation/Embedding_Block/CastCastinput_block*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
=model_feature_representation/Embedding_Block/embedding_lookupResourceGatherEmodel_feature_representation_embedding_block_embedding_lookup_30278345model_feature_representation/Embedding_Block/Cast:y:0*
Tindices0*X
_classN
LJloc:@model_feature_representation/Embedding_Block/embedding_lookup/3027834*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ª
Fmodel_feature_representation/Embedding_Block/embedding_lookup/IdentityIdentityFmodel_feature_representation/Embedding_Block/embedding_lookup:output:0*
T0*X
_classN
LJloc:@model_feature_representation/Embedding_Block/embedding_lookup/3027834*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÛ
Hmodel_feature_representation/Embedding_Block/embedding_lookup/Identity_1IdentityOmodel_feature_representation/Embedding_Block/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8model_feature_representation/Embedding_Sub_District/CastCastinput_sub_district*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Dmodel_feature_representation/Embedding_Sub_District/embedding_lookupResourceGatherLmodel_feature_representation_embedding_sub_district_embedding_lookup_3027840<model_feature_representation/Embedding_Sub_District/Cast:y:0*
Tindices0*_
_classU
SQloc:@model_feature_representation/Embedding_Sub_District/embedding_lookup/3027840*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0¿
Mmodel_feature_representation/Embedding_Sub_District/embedding_lookup/IdentityIdentityMmodel_feature_representation/Embedding_Sub_District/embedding_lookup:output:0*
T0*_
_classU
SQloc:@model_feature_representation/Embedding_Sub_District/embedding_lookup/3027840*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
Omodel_feature_representation/Embedding_Sub_District/embedding_lookup/Identity_1IdentityVmodel_feature_representation/Embedding_Sub_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4model_feature_representation/Embedding_District/CastCastinput_district*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
@model_feature_representation/Embedding_District/embedding_lookupResourceGatherHmodel_feature_representation_embedding_district_embedding_lookup_30278468model_feature_representation/Embedding_District/Cast:y:0*
Tindices0*[
_classQ
OMloc:@model_feature_representation/Embedding_District/embedding_lookup/3027846*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0³
Imodel_feature_representation/Embedding_District/embedding_lookup/IdentityIdentityImodel_feature_representation/Embedding_District/embedding_lookup:output:0*
T0*[
_classQ
OMloc:@model_feature_representation/Embedding_District/embedding_lookup/3027846*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
Kmodel_feature_representation/Embedding_District/embedding_lookup/Identity_1IdentityRmodel_feature_representation/Embedding_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1model_feature_representation/Embedding_State/CastCastinput_state*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
=model_feature_representation/Embedding_State/embedding_lookupResourceGatherEmodel_feature_representation_embedding_state_embedding_lookup_30278525model_feature_representation/Embedding_State/Cast:y:0*
Tindices0*X
_classN
LJloc:@model_feature_representation/Embedding_State/embedding_lookup/3027852*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0ª
Fmodel_feature_representation/Embedding_State/embedding_lookup/IdentityIdentityFmodel_feature_representation/Embedding_State/embedding_lookup:output:0*
T0*X
_classN
LJloc:@model_feature_representation/Embedding_State/embedding_lookup/3027852*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÛ
Hmodel_feature_representation/Embedding_State/embedding_lookup/Identity_1IdentityOmodel_feature_representation/Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
*model_feature_representation/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ñ
,model_feature_representation/flatten/ReshapeReshapeQmodel_feature_representation/Embedding_State/embedding_lookup/Identity_1:output:03model_feature_representation/flatten/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
,model_feature_representation/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
.model_feature_representation/flatten_1/ReshapeReshapeTmodel_feature_representation/Embedding_District/embedding_lookup/Identity_1:output:05model_feature_representation/flatten_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
,model_feature_representation/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ü
.model_feature_representation/flatten_2/ReshapeReshapeXmodel_feature_representation/Embedding_Sub_District/embedding_lookup/Identity_1:output:05model_feature_representation/flatten_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
,model_feature_representation/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   õ
.model_feature_representation/flatten_3/ReshapeReshapeQmodel_feature_representation/Embedding_Block/embedding_lookup/Identity_1:output:05model_feature_representation/flatten_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=model_feature_representation/concatted_clustering/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :©
8model_feature_representation/concatted_clustering/concatConcatV25model_feature_representation/flatten/Reshape:output:07model_feature_representation/flatten_1/Reshape:output:07model_feature_representation/flatten_2/Reshape:output:07model_feature_representation/flatten_3/Reshape:output:0Fmodel_feature_representation/concatted_clustering/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
IdentityIdentityAmodel_feature_representation/concatted_clustering/concat:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿPÐ
NoOpNoOp>^model_feature_representation/Embedding_Block/embedding_lookupA^model_feature_representation/Embedding_District/embedding_lookup>^model_feature_representation/Embedding_State/embedding_lookupE^model_feature_representation/Embedding_Sub_District/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 2~
=model_feature_representation/Embedding_Block/embedding_lookup=model_feature_representation/Embedding_Block/embedding_lookup2
@model_feature_representation/Embedding_District/embedding_lookup@model_feature_representation/Embedding_District/embedding_lookup2~
=model_feature_representation/Embedding_State/embedding_lookup=model_feature_representation/Embedding_State/embedding_lookup2
Dmodel_feature_representation/Embedding_Sub_District/embedding_lookupDmodel_feature_representation/Embedding_Sub_District/embedding_lookup:T P
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinput_District:TP
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinput_State:[W
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nameinput_Sub_District
î
¥
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993

inputs*
embedding_lookup_3027972:
identity¢9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
embedding_lookupResourceGatherembedding_lookup_3027972Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3027972*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3027972*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3027972*
_output_shapes

:*
dtype0
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3027972*
_output_shapes

:*
dtype0¦
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
º
>__inference_model_feature_representation_layer_call_fn_3028587
inputs_0_block
inputs_0_district
inputs_0_state
inputs_0_sub_district
unknown:	óC
	unknown_0:	ô&
	unknown_1:	â
	unknown_2:
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinputs_0_blockinputs_0_districtinputs_0_stateinputs_0_sub_districtunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028282o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinputs/0/Block:ZV
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/
_user_specified_nameinputs/0/Sub_District
ó
¦
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3028977

inputs+
embedding_lookup_3028956:	óC
identity¢9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp¢<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
embedding_lookupResourceGatherembedding_lookup_3028956Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3028956*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3028956*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3028956*
_output_shapes
:	óC*
dtype0
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       »
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
×#<¾
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: »
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3028956*
_output_shapes
:	óC*
dtype0§
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	óC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       À
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
×#<Ä
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ¸
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º

__inference_loss_fn_1_3029078X
Eembedding_district_embeddings_regularizer_abs_readvariableop_resource:	â
identity¢<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp¢?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpt
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ã
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpEembedding_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	â*
dtype0¤
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       Ä
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
×#<Ç
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ä
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Æ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpEembedding_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	â*
dtype0­
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	â
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       É
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
×#<Í
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: Á
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
IdentityIdentity3Embedding_District/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: Ç
NoOpNoOp=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¢
serving_default
C
input_Block4
serving_default_input_Block:0ÿÿÿÿÿÿÿÿÿ
I
input_District7
 serving_default_input_District:0ÿÿÿÿÿÿÿÿÿ
C
input_State4
serving_default_input_State:0ÿÿÿÿÿÿÿÿÿ
Q
input_Sub_District;
$serving_default_input_Sub_District:0ÿÿÿÿÿÿÿÿÿH
concatted_clustering0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿPtensorflow/serving/predict:Ö¬
è
layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
	variables
trainable_variables
regularization_losses
	keras_api

signatures
m__call__
*n&call_and_return_all_conditional_losses
o_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
µ

embeddings
	variables
trainable_variables
 regularization_losses
!	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
µ
"
embeddings
#	variables
$trainable_variables
%regularization_losses
&	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
'	variables
(trainable_variables
)regularization_losses
*	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
+	variables
,trainable_variables
-regularization_losses
.	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
/	variables
0trainable_variables
1regularization_losses
2	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
3	variables
4trainable_variables
5regularization_losses
6	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
§
7	variables
8trainable_variables
9regularization_losses
:	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
<
0
1
2
"3"
trackable_list_wrapper
<
0
1
2
"3"
trackable_list_wrapper
@
0
1
2
3"
trackable_list_wrapper
Ê
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
m__call__
o_default_save_signature
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
,:*2Embedding_State/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
­
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
0:.	â2Embedding_District/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
­
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
4:2	ô&2!Embedding_Sub_District/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
­
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
 regularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
-:+	óC2Embedding_Block/embeddings
'
"0"
trackable_list_wrapper
'
"0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
­
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
#	variables
$trainable_variables
%regularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
'	variables
(trainable_variables
)regularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
+	variables
,trainable_variables
-regularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
/	variables
0trainable_variables
1regularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
3	variables
4trainable_variables
5regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
7	variables
8trainable_variables
9regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
~
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
12"
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
(
0"
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
0"
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
0"
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
0"
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
Æ2Ã
>__inference_model_feature_representation_layer_call_fn_3028112
>__inference_model_feature_representation_layer_call_fn_3028571
>__inference_model_feature_representation_layer_call_fn_3028587
>__inference_model_feature_representation_layer_call_fn_3028309À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
²2¯
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028688
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028789
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028393
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028477À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bÿ
"__inference__wrapped_model_3027868input_Blockinput_Districtinput_Stateinput_Sub_District"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Û2Ø
1__inference_Embedding_State_layer_call_fn_3028811¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3028836¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Þ2Û
4__inference_Embedding_District_layer_call_fn_3028858¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ù2ö
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3028883¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
â2ß
8__inference_Embedding_Sub_District_layer_call_fn_3028905¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ý2ú
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3028930¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Û2Ø
1__inference_Embedding_Block_layer_call_fn_3028952¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3028977¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_layer_call_fn_3028982¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_layer_call_and_return_conditional_losses_3028988¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_flatten_1_layer_call_fn_3028993¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028999¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_flatten_2_layer_call_fn_3029004¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_flatten_2_layer_call_and_return_conditional_losses_3029010¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_flatten_3_layer_call_fn_3029015¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_flatten_3_layer_call_and_return_conditional_losses_3029021¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
à2Ý
6__inference_concatted_clustering_layer_call_fn_3029029¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
û2ø
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3029038¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±
__inference_loss_fn_0_3029058
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference_loss_fn_1_3029078
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference_loss_fn_2_3029098
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference_loss_fn_3_3029118
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
ÿBü
%__inference_signature_wrapper_3028555input_Blockinput_Districtinput_Stateinput_Sub_District"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ¯
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3028977_"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
1__inference_Embedding_Block_layer_call_fn_3028952R"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ²
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3028883_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
4__inference_Embedding_District_layer_call_fn_3028858R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¯
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3028836_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
1__inference_Embedding_State_layer_call_fn_3028811R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¶
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3028930_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
8__inference_Embedding_Sub_District_layer_call_fn_3028905R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿï
"__inference__wrapped_model_3027868È"ò¢î
æ¢â
ßÛ
ØªÔ
.
Block%"
input_Blockÿÿÿÿÿÿÿÿÿ
4
District(%
input_Districtÿÿÿÿÿÿÿÿÿ
.
State%"
input_Stateÿÿÿÿÿÿÿÿÿ
<
Sub_District,)
input_Sub_Districtÿÿÿÿÿÿÿÿÿ
ª "KªH
F
concatted_clustering.+
concatted_clusteringÿÿÿÿÿÿÿÿÿP§
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3029038Ñ§¢£
¢

"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
"
inputs/2ÿÿÿÿÿÿÿÿÿ
"
inputs/3ÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿP
 ÿ
6__inference_concatted_clustering_layer_call_fn_3029029Ä§¢£
¢

"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
"
inputs/2ÿÿÿÿÿÿÿÿÿ
"
inputs/3ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿP¦
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028999\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_flatten_1_layer_call_fn_3028993O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_flatten_2_layer_call_and_return_conditional_losses_3029010\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_flatten_2_layer_call_fn_3029004O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_flatten_3_layer_call_and_return_conditional_losses_3029021\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_flatten_3_layer_call_fn_3029015O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_flatten_layer_call_and_return_conditional_losses_3028988\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_flatten_layer_call_fn_3028982O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_3029058¢

¢ 
ª " <
__inference_loss_fn_1_3029078¢

¢ 
ª " <
__inference_loss_fn_2_3029098¢

¢ 
ª " <
__inference_loss_fn_3_3029118"¢

¢ 
ª " 
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028393ª"ú¢ö
î¢ê
ßÛ
ØªÔ
.
Block%"
input_Blockÿÿÿÿÿÿÿÿÿ
4
District(%
input_Districtÿÿÿÿÿÿÿÿÿ
.
State%"
input_Stateÿÿÿÿÿÿÿÿÿ
<
Sub_District,)
input_Sub_Districtÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿP
 
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028477ª"ú¢ö
î¢ê
ßÛ
ØªÔ
.
Block%"
input_Blockÿÿÿÿÿÿÿÿÿ
4
District(%
input_Districtÿÿÿÿÿÿÿÿÿ
.
State%"
input_Stateÿÿÿÿÿÿÿÿÿ
<
Sub_District,)
input_Sub_Districtÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿP
 
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028688¶"¢
ú¢ö
ëç
äªà
1
Block(%
inputs/0/Blockÿÿÿÿÿÿÿÿÿ
7
District+(
inputs/0/Districtÿÿÿÿÿÿÿÿÿ
1
State(%
inputs/0/Stateÿÿÿÿÿÿÿÿÿ
?
Sub_District/,
inputs/0/Sub_Districtÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿP
 
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028789¶"¢
ú¢ö
ëç
äªà
1
Block(%
inputs/0/Blockÿÿÿÿÿÿÿÿÿ
7
District+(
inputs/0/Districtÿÿÿÿÿÿÿÿÿ
1
State(%
inputs/0/Stateÿÿÿÿÿÿÿÿÿ
?
Sub_District/,
inputs/0/Sub_Districtÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿP
 à
>__inference_model_feature_representation_layer_call_fn_3028112"ú¢ö
î¢ê
ßÛ
ØªÔ
.
Block%"
input_Blockÿÿÿÿÿÿÿÿÿ
4
District(%
input_Districtÿÿÿÿÿÿÿÿÿ
.
State%"
input_Stateÿÿÿÿÿÿÿÿÿ
<
Sub_District,)
input_Sub_Districtÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿPà
>__inference_model_feature_representation_layer_call_fn_3028309"ú¢ö
î¢ê
ßÛ
ØªÔ
.
Block%"
input_Blockÿÿÿÿÿÿÿÿÿ
4
District(%
input_Districtÿÿÿÿÿÿÿÿÿ
.
State%"
input_Stateÿÿÿÿÿÿÿÿÿ
<
Sub_District,)
input_Sub_Districtÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿPì
>__inference_model_feature_representation_layer_call_fn_3028571©"¢
ú¢ö
ëç
äªà
1
Block(%
inputs/0/Blockÿÿÿÿÿÿÿÿÿ
7
District+(
inputs/0/Districtÿÿÿÿÿÿÿÿÿ
1
State(%
inputs/0/Stateÿÿÿÿÿÿÿÿÿ
?
Sub_District/,
inputs/0/Sub_Districtÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿPì
>__inference_model_feature_representation_layer_call_fn_3028587©"¢
ú¢ö
ëç
äªà
1
Block(%
inputs/0/Blockÿÿÿÿÿÿÿÿÿ
7
District+(
inputs/0/Districtÿÿÿÿÿÿÿÿÿ
1
State(%
inputs/0/Stateÿÿÿÿÿÿÿÿÿ
?
Sub_District/,
inputs/0/Sub_Districtÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿPü
%__inference_signature_wrapper_3028555Ò"ü¢ø
¢ 
ðªì
4
input_Block%"
input_Blockÿÿÿÿÿÿÿÿÿ
:
input_District(%
input_Districtÿÿÿÿÿÿÿÿÿ
4
input_State%"
input_Stateÿÿÿÿÿÿÿÿÿ
B
input_Sub_District,)
input_Sub_Districtÿÿÿÿÿÿÿÿÿ"KªH
F
concatted_clustering.+
concatted_clusteringÿÿÿÿÿÿÿÿÿP