??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
executor_typestring ?
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
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??	
|
Conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv1/kernel
u
 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*&
_output_shapes
:*
dtype0
l

Conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Conv1/bias
e
Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
_output_shapes
:*
dtype0
|
Conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_nameConv2/kernel
u
 Conv2/kernel/Read/ReadVariableOpReadVariableOpConv2/kernel*&
_output_shapes
:(*
dtype0
l

Conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_name
Conv2/bias
e
Conv2/bias/Read/ReadVariableOpReadVariableOp
Conv2/bias*
_output_shapes
:(*
dtype0
|
Conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:(<*
shared_nameConv3/kernel
u
 Conv3/kernel/Read/ReadVariableOpReadVariableOpConv3/kernel*&
_output_shapes
:(<*
dtype0
l

Conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_name
Conv3/bias
e
Conv3/bias/Read/ReadVariableOpReadVariableOp
Conv3/bias*
_output_shapes
:<*
dtype0
|
Conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:<P*
shared_nameConv4/kernel
u
 Conv4/kernel/Read/ReadVariableOpReadVariableOpConv4/kernel*&
_output_shapes
:<P*
dtype0
l

Conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*
shared_name
Conv4/bias
e
Conv4/bias/Read/ReadVariableOpReadVariableOp
Conv4/bias*
_output_shapes
:P*
dtype0
t
fc11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?	?*
shared_namefc11/kernel
m
fc11/kernel/Read/ReadVariableOpReadVariableOpfc11/kernel* 
_output_shapes
:
?	?*
dtype0
k
	fc11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	fc11/bias
d
fc11/bias/Read/ReadVariableOpReadVariableOp	fc11/bias*
_output_shapes	
:?*
dtype0
t
fc12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namefc12/kernel
m
fc12/kernel/Read/ReadVariableOpReadVariableOpfc12/kernel* 
_output_shapes
:
??*
dtype0
k
	fc12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	fc12/bias
d
fc12/bias/Read/ReadVariableOpReadVariableOp	fc12/bias*
_output_shapes	
:?*
dtype0

NoOpNoOp
?5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?5
value?5B?5 B?5
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer_with_weights-5
layer-14
layer-15
layer-16
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
 	keras_api
R
!regularization_losses
"trainable_variables
#	variables
$	keras_api
h

%kernel
&bias
'regularization_losses
(trainable_variables
)	variables
*	keras_api
R
+regularization_losses
,trainable_variables
-	variables
.	keras_api
R
/regularization_losses
0trainable_variables
1	variables
2	keras_api
h

3kernel
4bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
R
9regularization_losses
:trainable_variables
;	variables
<	keras_api
R
=regularization_losses
>trainable_variables
?	variables
@	keras_api
h

Akernel
Bbias
Cregularization_losses
Dtrainable_variables
E	variables
F	keras_api
R
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
R
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
h

Okernel
Pbias
Qregularization_losses
Rtrainable_variables
S	variables
T	keras_api
h

Ukernel
Vbias
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
R
[regularization_losses
\trainable_variables
]	variables
^	keras_api
R
_regularization_losses
`trainable_variables
a	variables
b	keras_api
 
V
0
1
%2
&3
34
45
A6
B7
O8
P9
U10
V11
V
0
1
%2
&3
34
45
A6
B7
O8
P9
U10
V11
?
regularization_losses
trainable_variables
clayer_regularization_losses
dnon_trainable_variables

elayers
	variables
fmetrics
glayer_metrics
 
XV
VARIABLE_VALUEConv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
trainable_variables
hlayer_regularization_losses
inon_trainable_variables

jlayers
	variables
kmetrics
llayer_metrics
 
 
 
?
regularization_losses
trainable_variables
mlayer_regularization_losses
nnon_trainable_variables

olayers
	variables
pmetrics
qlayer_metrics
 
 
 
?
!regularization_losses
"trainable_variables
rlayer_regularization_losses
snon_trainable_variables

tlayers
#	variables
umetrics
vlayer_metrics
XV
VARIABLE_VALUEConv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

%0
&1

%0
&1
?
'regularization_losses
(trainable_variables
wlayer_regularization_losses
xnon_trainable_variables

ylayers
)	variables
zmetrics
{layer_metrics
 
 
 
?
+regularization_losses
,trainable_variables
|layer_regularization_losses
}non_trainable_variables

~layers
-	variables
metrics
?layer_metrics
 
 
 
?
/regularization_losses
0trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
1	variables
?metrics
?layer_metrics
XV
VARIABLE_VALUEConv3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

30
41

30
41
?
5regularization_losses
6trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
7	variables
?metrics
?layer_metrics
 
 
 
?
9regularization_losses
:trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
;	variables
?metrics
?layer_metrics
 
 
 
?
=regularization_losses
>trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?layer_metrics
XV
VARIABLE_VALUEConv4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

A0
B1

A0
B1
?
Cregularization_losses
Dtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
E	variables
?metrics
?layer_metrics
 
 
 
?
Gregularization_losses
Htrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
I	variables
?metrics
?layer_metrics
 
 
 
?
Kregularization_losses
Ltrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
M	variables
?metrics
?layer_metrics
WU
VARIABLE_VALUEfc11/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc11/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

O0
P1

O0
P1
?
Qregularization_losses
Rtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
S	variables
?metrics
?layer_metrics
WU
VARIABLE_VALUEfc12/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	fc12/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1

U0
V1
?
Wregularization_losses
Xtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
Y	variables
?metrics
?layer_metrics
 
 
 
?
[regularization_losses
\trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
]	variables
?metrics
?layer_metrics
 
 
 
?
_regularization_losses
`trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
a	variables
?metrics
?layer_metrics
 
 
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
12
13
14
15
16
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
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????7/*
dtype0*$
shape:?????????7/
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1Conv1/kernel
Conv1/biasConv2/kernel
Conv2/biasConv3/kernel
Conv3/biasConv4/kernel
Conv4/biasfc11/kernel	fc11/biasfc12/kernel	fc12/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_signature_wrapper_938
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename Conv1/kernel/Read/ReadVariableOpConv1/bias/Read/ReadVariableOp Conv2/kernel/Read/ReadVariableOpConv2/bias/Read/ReadVariableOp Conv3/kernel/Read/ReadVariableOpConv3/bias/Read/ReadVariableOp Conv4/kernel/Read/ReadVariableOpConv4/bias/Read/ReadVariableOpfc11/kernel/Read/ReadVariableOpfc11/bias/Read/ReadVariableOpfc12/kernel/Read/ReadVariableOpfc12/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_1491
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasConv3/kernel
Conv3/biasConv4/kernel
Conv4/biasfc11/kernel	fc11/biasfc12/kernel	fc12/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_1537??
?
Z
!__inference_D1_layer_call_fn_1196

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D1_layer_call_and_return_conditional_losses_6702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
=__inference_fc12_layer_call_and_return_conditional_losses_470

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
>__inference_Conv2_layer_call_and_return_conditional_losses_362

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????(2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?D
?
>__inference_model_layer_call_and_return_conditional_losses_994

inputs>
$conv1_conv2d_readvariableop_resource:3
%conv1_biasadd_readvariableop_resource:>
$conv2_conv2d_readvariableop_resource:(3
%conv2_biasadd_readvariableop_resource:(>
$conv3_conv2d_readvariableop_resource:(<3
%conv3_biasadd_readvariableop_resource:<>
$conv4_conv2d_readvariableop_resource:<P3
%conv4_biasadd_readvariableop_resource:P7
#fc11_matmul_readvariableop_resource:
?	?3
$fc11_biasadd_readvariableop_resource:	?7
#fc12_matmul_readvariableop_resource:
??3
$fc12_biasadd_readvariableop_resource:	?
identity??Conv1/BiasAdd/ReadVariableOp?Conv1/Conv2D/ReadVariableOp?Conv2/BiasAdd/ReadVariableOp?Conv2/Conv2D/ReadVariableOp?Conv3/BiasAdd/ReadVariableOp?Conv3/Conv2D/ReadVariableOp?Conv4/BiasAdd/ReadVariableOp?Conv4/Conv2D/ReadVariableOp?fc11/BiasAdd/ReadVariableOp?fc11/MatMul/ReadVariableOp?fc12/BiasAdd/ReadVariableOp?fc12/MatMul/ReadVariableOp?
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv1/Conv2D/ReadVariableOp?
Conv1/Conv2DConv2Dinputs#Conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4,*
paddingVALID*
strides
2
Conv1/Conv2D?
Conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv1/BiasAdd/ReadVariableOp?
Conv1/BiasAddBiasAddConv1/Conv2D:output:0$Conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4,2
Conv1/BiasAddr

Conv1/ReluReluConv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????4,2

Conv1/Relu?
Pool1/MaxPoolMaxPoolConv1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
Pool1/MaxPoolx
D1/IdentityIdentityPool1/MaxPool:output:0*
T0*/
_output_shapes
:?????????2
D1/Identity?
Conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02
Conv2/Conv2D/ReadVariableOp?
Conv2/Conv2DConv2DD1/Identity:output:0#Conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingVALID*
strides
2
Conv2/Conv2D?
Conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
Conv2/BiasAdd/ReadVariableOp?
Conv2/BiasAddBiasAddConv2/Conv2D:output:0$Conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(2
Conv2/BiasAddr

Conv2/ReluReluConv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????(2

Conv2/Relu?
Pool2/MaxPoolMaxPoolConv2/Relu:activations:0*/
_output_shapes
:?????????
(*
ksize
*
paddingVALID*
strides
2
Pool2/MaxPoolx
D2/IdentityIdentityPool2/MaxPool:output:0*
T0*/
_output_shapes
:?????????
(2
D2/Identity?
Conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype02
Conv3/Conv2D/ReadVariableOp?
Conv3/Conv2DConv2DD2/Identity:output:0#Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
<*
paddingVALID*
strides
2
Conv3/Conv2D?
Conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
Conv3/BiasAdd/ReadVariableOp?
Conv3/BiasAddBiasAddConv3/Conv2D:output:0$Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
<2
Conv3/BiasAddr

Conv3/ReluReluConv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
<2

Conv3/Relu?
Pool3/MaxPoolMaxPoolConv3/Relu:activations:0*/
_output_shapes
:?????????<*
ksize
*
paddingVALID*
strides
2
Pool3/MaxPoolx
D3/IdentityIdentityPool3/MaxPool:output:0*
T0*/
_output_shapes
:?????????<2
D3/Identity?
Conv4/Conv2D/ReadVariableOpReadVariableOp$conv4_conv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype02
Conv4/Conv2D/ReadVariableOp?
Conv4/Conv2DConv2DD3/Identity:output:0#Conv4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????P*
paddingVALID*
strides
2
Conv4/Conv2D?
Conv4/BiasAdd/ReadVariableOpReadVariableOp%conv4_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
Conv4/BiasAdd/ReadVariableOp?
Conv4/BiasAddBiasAddConv4/Conv2D:output:0$Conv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????P2
Conv4/BiasAddr

Conv4/ReluReluConv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????P2

Conv4/Relus
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_1/Const?
flatten_1/ReshapeReshapeConv4/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshapeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeD3/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????	2
flatten/Reshape?
fc11/MatMul/ReadVariableOpReadVariableOp#fc11_matmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype02
fc11/MatMul/ReadVariableOp?
fc11/MatMulMatMulflatten/Reshape:output:0"fc11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
fc11/MatMul?
fc11/BiasAdd/ReadVariableOpReadVariableOp$fc11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
fc11/BiasAdd/ReadVariableOp?
fc11/BiasAddBiasAddfc11/MatMul:product:0#fc11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
fc11/BiasAdd?
fc12/MatMul/ReadVariableOpReadVariableOp#fc12_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
fc12/MatMul/ReadVariableOp?
fc12/MatMulMatMulflatten_1/Reshape:output:0"fc12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
fc12/MatMul?
fc12/BiasAdd/ReadVariableOpReadVariableOp$fc12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
fc12/BiasAdd/ReadVariableOp?
fc12/BiasAddBiasAddfc12/MatMul:product:0#fc12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
fc12/BiasAdd|
add/addAddV2fc11/BiasAdd:output:0fc12/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
add/addb
deepid/ReluReluadd/add:z:0*
T0*(
_output_shapes
:??????????2
deepid/Reluu
IdentityIdentitydeepid/Relu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Conv1/BiasAdd/ReadVariableOp^Conv1/Conv2D/ReadVariableOp^Conv2/BiasAdd/ReadVariableOp^Conv2/Conv2D/ReadVariableOp^Conv3/BiasAdd/ReadVariableOp^Conv3/Conv2D/ReadVariableOp^Conv4/BiasAdd/ReadVariableOp^Conv4/Conv2D/ReadVariableOp^fc11/BiasAdd/ReadVariableOp^fc11/MatMul/ReadVariableOp^fc12/BiasAdd/ReadVariableOp^fc12/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 2<
Conv1/BiasAdd/ReadVariableOpConv1/BiasAdd/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2<
Conv2/BiasAdd/ReadVariableOpConv2/BiasAdd/ReadVariableOp2:
Conv2/Conv2D/ReadVariableOpConv2/Conv2D/ReadVariableOp2<
Conv3/BiasAdd/ReadVariableOpConv3/BiasAdd/ReadVariableOp2:
Conv3/Conv2D/ReadVariableOpConv3/Conv2D/ReadVariableOp2<
Conv4/BiasAdd/ReadVariableOpConv4/BiasAdd/ReadVariableOp2:
Conv4/Conv2D/ReadVariableOpConv4/Conv2D/ReadVariableOp2:
fc11/BiasAdd/ReadVariableOpfc11/BiasAdd/ReadVariableOp28
fc11/MatMul/ReadVariableOpfc11/MatMul/ReadVariableOp2:
fc12/BiasAdd/ReadVariableOpfc12/BiasAdd/ReadVariableOp28
fc12/MatMul/ReadVariableOpfc12/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????7/
 
_user_specified_nameinputs
?
Z
;__inference_D3_layer_call_and_return_conditional_losses_594

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????<2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????<*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
#__inference_fc12_layer_call_fn_1410

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_fc12_layer_call_and_return_conditional_losses_4702
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
@
$__inference_Pool3_layer_call_fn_1303

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool3_layer_call_and_return_conditional_losses_4022
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
<:W S
/
_output_shapes
:?????????
<
 
_user_specified_nameinputs
?

?
=__inference_fc11_layer_call_and_return_conditional_losses_454

inputs2
matmul_readvariableop_resource:
?	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?
B
&__inference_flatten_layer_call_fn_1361

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_4422
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
>__inference_Conv3_layer_call_and_return_conditional_losses_392

inputs8
conv2d_readvariableop_resource:(<-
biasadd_readvariableop_resource:<
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
<*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
<2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????
<2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????
<2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????
(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
(
 
_user_specified_nameinputs
?
Z
!__inference_D3_layer_call_fn_1330

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D3_layer_call_and_return_conditional_losses_5942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
A
%__inference_deepid_layer_call_fn_1432

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_deepid_layer_call_and_return_conditional_losses_4892
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
[
<__inference_D2_layer_call_and_return_conditional_losses_1253

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????
(2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????
(*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
(2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
(2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
(2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????
(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
(:W S
/
_output_shapes
:?????????
(
 
_user_specified_nameinputs
?
?
!__inference_signature_wrapper_938
input_1!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
?	?
	unknown_8:	?
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__wrapped_model_2482
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????7/
!
_user_specified_name	input_1
?
@
$__inference_Pool3_layer_call_fn_1298

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool3_layer_call_and_return_conditional_losses_3012
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
>__inference_Conv1_layer_call_and_return_conditional_losses_332

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4,*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4,2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????4,2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????4,2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????7/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????7/
 
_user_specified_nameinputs
?
=
!__inference_D3_layer_call_fn_1325

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D3_layer_call_and_return_conditional_losses_4092
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?%
?
__inference__traced_save_1491
file_prefix+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop+
'savev2_conv2_kernel_read_readvariableop)
%savev2_conv2_bias_read_readvariableop+
'savev2_conv3_kernel_read_readvariableop)
%savev2_conv3_bias_read_readvariableop+
'savev2_conv4_kernel_read_readvariableop)
%savev2_conv4_bias_read_readvariableop*
&savev2_fc11_kernel_read_readvariableop(
$savev2_fc11_bias_read_readvariableop*
&savev2_fc12_kernel_read_readvariableop(
$savev2_fc12_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop'savev2_conv2_kernel_read_readvariableop%savev2_conv2_bias_read_readvariableop'savev2_conv3_kernel_read_readvariableop%savev2_conv3_bias_read_readvariableop'savev2_conv4_kernel_read_readvariableop%savev2_conv4_bias_read_readvariableop&savev2_fc11_kernel_read_readvariableop$savev2_fc11_bias_read_readvariableop&savev2_fc12_kernel_read_readvariableop$savev2_fc12_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::(:(:(<:<:<P:P:
?	?:?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:(: 

_output_shapes
:(:,(
&
_output_shapes
:(<: 

_output_shapes
:<:,(
&
_output_shapes
:<P: 

_output_shapes
:P:&	"
 
_output_shapes
:
?	?:!


_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: 
?
Z
!__inference_D2_layer_call_fn_1263

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D2_layer_call_and_return_conditional_losses_6322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????
(2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
(22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
(
 
_user_specified_nameinputs
?<
?
>__inference_model_layer_call_and_return_conditional_losses_863
input_1#
	conv1_822:
	conv1_824:#
	conv2_829:(
	conv2_831:(#
	conv3_836:(<
	conv3_838:<#
	conv4_843:<P
	conv4_845:P
fc11_850:
?	?
fc11_852:	?
fc12_855:
??
fc12_857:	?
identity??Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Conv4/StatefulPartitionedCall?fc11/StatefulPartitionedCall?fc12/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1	conv1_822	conv1_824*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv1_layer_call_and_return_conditional_losses_3322
Conv1/StatefulPartitionedCall?
Pool1/PartitionedCallPartitionedCall&Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool1_layer_call_and_return_conditional_losses_3422
Pool1/PartitionedCall?
D1/PartitionedCallPartitionedCallPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D1_layer_call_and_return_conditional_losses_3492
D1/PartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCallD1/PartitionedCall:output:0	conv2_829	conv2_831*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv2_layer_call_and_return_conditional_losses_3622
Conv2/StatefulPartitionedCall?
Pool2/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool2_layer_call_and_return_conditional_losses_3722
Pool2/PartitionedCall?
D2/PartitionedCallPartitionedCallPool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D2_layer_call_and_return_conditional_losses_3792
D2/PartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCallD2/PartitionedCall:output:0	conv3_836	conv3_838*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv3_layer_call_and_return_conditional_losses_3922
Conv3/StatefulPartitionedCall?
Pool3/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool3_layer_call_and_return_conditional_losses_4022
Pool3/PartitionedCall?
D3/PartitionedCallPartitionedCallPool3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D3_layer_call_and_return_conditional_losses_4092
D3/PartitionedCall?
Conv4/StatefulPartitionedCallStatefulPartitionedCallD3/PartitionedCall:output:0	conv4_843	conv4_845*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv4_layer_call_and_return_conditional_losses_4222
Conv4/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall&Conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_1_layer_call_and_return_conditional_losses_4342
flatten_1/PartitionedCall?
flatten/PartitionedCallPartitionedCallD3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_4422
flatten/PartitionedCall?
fc11/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc11_850fc11_852*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_fc11_layer_call_and_return_conditional_losses_4542
fc11/StatefulPartitionedCall?
fc12/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc12_855fc12_857*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_fc12_layer_call_and_return_conditional_losses_4702
fc12/StatefulPartitionedCall?
add/PartitionedCallPartitionedCall%fc11/StatefulPartitionedCall:output:0%fc12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_add_layer_call_and_return_conditional_losses_4822
add/PartitionedCall?
deepid/PartitionedCallPartitionedCalladd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_deepid_layer_call_and_return_conditional_losses_4892
deepid/PartitionedCall{
IdentityIdentitydeepid/PartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^fc11/StatefulPartitionedCall^fc12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall2<
fc11/StatefulPartitionedCallfc11/StatefulPartitionedCall2<
fc12/StatefulPartitionedCallfc12/StatefulPartitionedCall:X T
/
_output_shapes
:?????????7/
!
_user_specified_name	input_1
?
Z
;__inference_D1_layer_call_and_return_conditional_losses_670

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?6
?
 __inference__traced_restore_1537
file_prefix7
assignvariableop_conv1_kernel:+
assignvariableop_1_conv1_bias:9
assignvariableop_2_conv2_kernel:(+
assignvariableop_3_conv2_bias:(9
assignvariableop_4_conv3_kernel:(<+
assignvariableop_5_conv3_bias:<9
assignvariableop_6_conv4_kernel:<P+
assignvariableop_7_conv4_bias:P2
assignvariableop_8_fc11_kernel:
?	?+
assignvariableop_9_fc11_bias:	?3
assignvariableop_10_fc12_kernel:
??,
assignvariableop_11_fc12_bias:	?
identity_13??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_conv3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_fc11_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_fc11_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_fc12_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_fc12_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_12f
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_13?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
?
[
?__inference_Pool3_layer_call_and_return_conditional_losses_1293

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????<*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
<:W S
/
_output_shapes
:?????????
<
 
_user_specified_nameinputs
?
[
?__inference_Pool2_layer_call_and_return_conditional_losses_1226

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????
(*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????
(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
Z
>__inference_Pool2_layer_call_and_return_conditional_losses_279

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
?__inference_Conv2_layer_call_and_return_conditional_losses_1207

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????(2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
Y
;__inference_D1_layer_call_and_return_conditional_losses_349

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
[
?__inference_Pool1_layer_call_and_return_conditional_losses_1159

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????4,:W S
/
_output_shapes
:?????????4,
 
_user_specified_nameinputs
?
=
!__inference_D2_layer_call_fn_1258

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D2_layer_call_and_return_conditional_losses_3792
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????
(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
(:W S
/
_output_shapes
:?????????
(
 
_user_specified_nameinputs
?
N
"__inference_add_layer_call_fn_1422
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_add_layer_call_and_return_conditional_losses_4822
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
@
$__inference_Pool1_layer_call_fn_1164

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool1_layer_call_and_return_conditional_losses_2572
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
@
$__inference_Pool1_layer_call_fn_1169

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool1_layer_call_and_return_conditional_losses_3422
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????4,:W S
/
_output_shapes
:?????????4,
 
_user_specified_nameinputs
?
[
?__inference_deepid_layer_call_and_return_conditional_losses_489

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_model_layer_call_fn_519
input_1!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
?	?
	unknown_8:	?
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_model_layer_call_and_return_conditional_losses_4922
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????7/
!
_user_specified_name	input_1
?
?
$__inference_Conv3_layer_call_fn_1283

inputs!
unknown:(<
	unknown_0:<
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv3_layer_call_and_return_conditional_losses_3922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????
<2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????
(: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
(
 
_user_specified_nameinputs
?
[
<__inference_D3_layer_call_and_return_conditional_losses_1320

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????<2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????<*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
#__inference_model_layer_call_fn_819
input_1!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
?	?
	unknown_8:	?
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_model_layer_call_and_return_conditional_losses_7632
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????7/
!
_user_specified_name	input_1
?
Z
<__inference_D1_layer_call_and_return_conditional_losses_1174

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
[
?__inference_Pool3_layer_call_and_return_conditional_losses_1288

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
>__inference_fc11_layer_call_and_return_conditional_losses_1382

inputs2
matmul_readvariableop_resource:
?	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?
\
@__inference_deepid_layer_call_and_return_conditional_losses_1427

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Z
>__inference_Pool2_layer_call_and_return_conditional_losses_372

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????
(*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????
(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
Z
<__inference_D2_layer_call_and_return_conditional_losses_1241

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????
(2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????
(2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
(:W S
/
_output_shapes
:?????????
(
 
_user_specified_nameinputs
?
Z
;__inference_D2_layer_call_and_return_conditional_losses_632

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????
(2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????
(*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
(2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
(2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
(2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????
(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
(:W S
/
_output_shapes
:?????????
(
 
_user_specified_nameinputs
?
Z
>__inference_Pool1_layer_call_and_return_conditional_losses_257

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
@
$__inference_Pool2_layer_call_fn_1236

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool2_layer_call_and_return_conditional_losses_3722
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????
(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_1356

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????	2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
i
=__inference_add_layer_call_and_return_conditional_losses_1416
inputs_0
inputs_1
identityZ
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:??????????2
add\
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?]
?
?__inference_model_layer_call_and_return_conditional_losses_1071

inputs>
$conv1_conv2d_readvariableop_resource:3
%conv1_biasadd_readvariableop_resource:>
$conv2_conv2d_readvariableop_resource:(3
%conv2_biasadd_readvariableop_resource:(>
$conv3_conv2d_readvariableop_resource:(<3
%conv3_biasadd_readvariableop_resource:<>
$conv4_conv2d_readvariableop_resource:<P3
%conv4_biasadd_readvariableop_resource:P7
#fc11_matmul_readvariableop_resource:
?	?3
$fc11_biasadd_readvariableop_resource:	?7
#fc12_matmul_readvariableop_resource:
??3
$fc12_biasadd_readvariableop_resource:	?
identity??Conv1/BiasAdd/ReadVariableOp?Conv1/Conv2D/ReadVariableOp?Conv2/BiasAdd/ReadVariableOp?Conv2/Conv2D/ReadVariableOp?Conv3/BiasAdd/ReadVariableOp?Conv3/Conv2D/ReadVariableOp?Conv4/BiasAdd/ReadVariableOp?Conv4/Conv2D/ReadVariableOp?fc11/BiasAdd/ReadVariableOp?fc11/MatMul/ReadVariableOp?fc12/BiasAdd/ReadVariableOp?fc12/MatMul/ReadVariableOp?
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv1/Conv2D/ReadVariableOp?
Conv1/Conv2DConv2Dinputs#Conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4,*
paddingVALID*
strides
2
Conv1/Conv2D?
Conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv1/BiasAdd/ReadVariableOp?
Conv1/BiasAddBiasAddConv1/Conv2D:output:0$Conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4,2
Conv1/BiasAddr

Conv1/ReluReluConv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????4,2

Conv1/Relu?
Pool1/MaxPoolMaxPoolConv1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
Pool1/MaxPooli
D1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
D1/dropout/Const?
D1/dropout/MulMulPool1/MaxPool:output:0D1/dropout/Const:output:0*
T0*/
_output_shapes
:?????????2
D1/dropout/Mulj
D1/dropout/ShapeShapePool1/MaxPool:output:0*
T0*
_output_shapes
:2
D1/dropout/Shape?
'D1/dropout/random_uniform/RandomUniformRandomUniformD1/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02)
'D1/dropout/random_uniform/RandomUniform{
D1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
D1/dropout/GreaterEqual/y?
D1/dropout/GreaterEqualGreaterEqual0D1/dropout/random_uniform/RandomUniform:output:0"D1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
D1/dropout/GreaterEqual?
D1/dropout/CastCastD1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
D1/dropout/Cast?
D1/dropout/Mul_1MulD1/dropout/Mul:z:0D1/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
D1/dropout/Mul_1?
Conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02
Conv2/Conv2D/ReadVariableOp?
Conv2/Conv2DConv2DD1/dropout/Mul_1:z:0#Conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingVALID*
strides
2
Conv2/Conv2D?
Conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
Conv2/BiasAdd/ReadVariableOp?
Conv2/BiasAddBiasAddConv2/Conv2D:output:0$Conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(2
Conv2/BiasAddr

Conv2/ReluReluConv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????(2

Conv2/Relu?
Pool2/MaxPoolMaxPoolConv2/Relu:activations:0*/
_output_shapes
:?????????
(*
ksize
*
paddingVALID*
strides
2
Pool2/MaxPooli
D2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
D2/dropout/Const?
D2/dropout/MulMulPool2/MaxPool:output:0D2/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
(2
D2/dropout/Mulj
D2/dropout/ShapeShapePool2/MaxPool:output:0*
T0*
_output_shapes
:2
D2/dropout/Shape?
'D2/dropout/random_uniform/RandomUniformRandomUniformD2/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
(*
dtype02)
'D2/dropout/random_uniform/RandomUniform{
D2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
D2/dropout/GreaterEqual/y?
D2/dropout/GreaterEqualGreaterEqual0D2/dropout/random_uniform/RandomUniform:output:0"D2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
(2
D2/dropout/GreaterEqual?
D2/dropout/CastCastD2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
(2
D2/dropout/Cast?
D2/dropout/Mul_1MulD2/dropout/Mul:z:0D2/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
(2
D2/dropout/Mul_1?
Conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype02
Conv3/Conv2D/ReadVariableOp?
Conv3/Conv2DConv2DD2/dropout/Mul_1:z:0#Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
<*
paddingVALID*
strides
2
Conv3/Conv2D?
Conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
Conv3/BiasAdd/ReadVariableOp?
Conv3/BiasAddBiasAddConv3/Conv2D:output:0$Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
<2
Conv3/BiasAddr

Conv3/ReluReluConv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
<2

Conv3/Relu?
Pool3/MaxPoolMaxPoolConv3/Relu:activations:0*/
_output_shapes
:?????????<*
ksize
*
paddingVALID*
strides
2
Pool3/MaxPooli
D3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
D3/dropout/Const?
D3/dropout/MulMulPool3/MaxPool:output:0D3/dropout/Const:output:0*
T0*/
_output_shapes
:?????????<2
D3/dropout/Mulj
D3/dropout/ShapeShapePool3/MaxPool:output:0*
T0*
_output_shapes
:2
D3/dropout/Shape?
'D3/dropout/random_uniform/RandomUniformRandomUniformD3/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????<*
dtype02)
'D3/dropout/random_uniform/RandomUniform{
D3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
D3/dropout/GreaterEqual/y?
D3/dropout/GreaterEqualGreaterEqual0D3/dropout/random_uniform/RandomUniform:output:0"D3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<2
D3/dropout/GreaterEqual?
D3/dropout/CastCastD3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<2
D3/dropout/Cast?
D3/dropout/Mul_1MulD3/dropout/Mul:z:0D3/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<2
D3/dropout/Mul_1?
Conv4/Conv2D/ReadVariableOpReadVariableOp$conv4_conv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype02
Conv4/Conv2D/ReadVariableOp?
Conv4/Conv2DConv2DD3/dropout/Mul_1:z:0#Conv4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????P*
paddingVALID*
strides
2
Conv4/Conv2D?
Conv4/BiasAdd/ReadVariableOpReadVariableOp%conv4_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
Conv4/BiasAdd/ReadVariableOp?
Conv4/BiasAddBiasAddConv4/Conv2D:output:0$Conv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????P2
Conv4/BiasAddr

Conv4/ReluReluConv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????P2

Conv4/Relus
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_1/Const?
flatten_1/ReshapeReshapeConv4/Relu:activations:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshapeo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeD3/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????	2
flatten/Reshape?
fc11/MatMul/ReadVariableOpReadVariableOp#fc11_matmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype02
fc11/MatMul/ReadVariableOp?
fc11/MatMulMatMulflatten/Reshape:output:0"fc11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
fc11/MatMul?
fc11/BiasAdd/ReadVariableOpReadVariableOp$fc11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
fc11/BiasAdd/ReadVariableOp?
fc11/BiasAddBiasAddfc11/MatMul:product:0#fc11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
fc11/BiasAdd?
fc12/MatMul/ReadVariableOpReadVariableOp#fc12_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
fc12/MatMul/ReadVariableOp?
fc12/MatMulMatMulflatten_1/Reshape:output:0"fc12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
fc12/MatMul?
fc12/BiasAdd/ReadVariableOpReadVariableOp$fc12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
fc12/BiasAdd/ReadVariableOp?
fc12/BiasAddBiasAddfc12/MatMul:product:0#fc12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
fc12/BiasAdd|
add/addAddV2fc11/BiasAdd:output:0fc12/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
add/addb
deepid/ReluReluadd/add:z:0*
T0*(
_output_shapes
:??????????2
deepid/Reluu
IdentityIdentitydeepid/Relu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Conv1/BiasAdd/ReadVariableOp^Conv1/Conv2D/ReadVariableOp^Conv2/BiasAdd/ReadVariableOp^Conv2/Conv2D/ReadVariableOp^Conv3/BiasAdd/ReadVariableOp^Conv3/Conv2D/ReadVariableOp^Conv4/BiasAdd/ReadVariableOp^Conv4/Conv2D/ReadVariableOp^fc11/BiasAdd/ReadVariableOp^fc11/MatMul/ReadVariableOp^fc12/BiasAdd/ReadVariableOp^fc12/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 2<
Conv1/BiasAdd/ReadVariableOpConv1/BiasAdd/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2<
Conv2/BiasAdd/ReadVariableOpConv2/BiasAdd/ReadVariableOp2:
Conv2/Conv2D/ReadVariableOpConv2/Conv2D/ReadVariableOp2<
Conv3/BiasAdd/ReadVariableOpConv3/BiasAdd/ReadVariableOp2:
Conv3/Conv2D/ReadVariableOpConv3/Conv2D/ReadVariableOp2<
Conv4/BiasAdd/ReadVariableOpConv4/BiasAdd/ReadVariableOp2:
Conv4/Conv2D/ReadVariableOpConv4/Conv2D/ReadVariableOp2:
fc11/BiasAdd/ReadVariableOpfc11/BiasAdd/ReadVariableOp28
fc11/MatMul/ReadVariableOpfc11/MatMul/ReadVariableOp2:
fc12/BiasAdd/ReadVariableOpfc12/BiasAdd/ReadVariableOp28
fc12/MatMul/ReadVariableOpfc12/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????7/
 
_user_specified_nameinputs
?
?
?__inference_Conv3_layer_call_and_return_conditional_losses_1274

inputs8
conv2d_readvariableop_resource:(<-
biasadd_readvariableop_resource:<
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
<*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
<2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????
<2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????
<2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????
(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
(
 
_user_specified_nameinputs
?
Z
>__inference_Pool3_layer_call_and_return_conditional_losses_301

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
[
?__inference_Pool1_layer_call_and_return_conditional_losses_1154

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
$__inference_model_layer_call_fn_1129

inputs!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
?	?
	unknown_8:	?
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_model_layer_call_and_return_conditional_losses_7632
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????7/
 
_user_specified_nameinputs
?
Z
>__inference_Pool3_layer_call_and_return_conditional_losses_402

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????<*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
<:W S
/
_output_shapes
:?????????
<
 
_user_specified_nameinputs
?
?
?__inference_Conv4_layer_call_and_return_conditional_losses_1341

inputs8
conv2d_readvariableop_resource:<P-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????P*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????P2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????P2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????P2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
Z
>__inference_Pool1_layer_call_and_return_conditional_losses_342

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????4,:W S
/
_output_shapes
:?????????4,
 
_user_specified_nameinputs
?
?
$__inference_model_layer_call_fn_1100

inputs!
unknown:
	unknown_0:#
	unknown_1:(
	unknown_2:(#
	unknown_3:(<
	unknown_4:<#
	unknown_5:<P
	unknown_6:P
	unknown_7:
?	?
	unknown_8:	?
	unknown_9:
??

unknown_10:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_model_layer_call_and_return_conditional_losses_4922
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????7/
 
_user_specified_nameinputs
?
[
<__inference_D1_layer_call_and_return_conditional_losses_1186

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_Conv1_layer_call_fn_1149

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv1_layer_call_and_return_conditional_losses_3322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????4,2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????7/: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????7/
 
_user_specified_nameinputs
?
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_1367

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????P:W S
/
_output_shapes
:?????????P
 
_user_specified_nameinputs
?@
?
>__inference_model_layer_call_and_return_conditional_losses_907
input_1#
	conv1_866:
	conv1_868:#
	conv2_873:(
	conv2_875:(#
	conv3_880:(<
	conv3_882:<#
	conv4_887:<P
	conv4_889:P
fc11_894:
?	?
fc11_896:	?
fc12_899:
??
fc12_901:	?
identity??Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Conv4/StatefulPartitionedCall?D1/StatefulPartitionedCall?D2/StatefulPartitionedCall?D3/StatefulPartitionedCall?fc11/StatefulPartitionedCall?fc12/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1	conv1_866	conv1_868*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv1_layer_call_and_return_conditional_losses_3322
Conv1/StatefulPartitionedCall?
Pool1/PartitionedCallPartitionedCall&Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool1_layer_call_and_return_conditional_losses_3422
Pool1/PartitionedCall?
D1/StatefulPartitionedCallStatefulPartitionedCallPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D1_layer_call_and_return_conditional_losses_6702
D1/StatefulPartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCall#D1/StatefulPartitionedCall:output:0	conv2_873	conv2_875*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv2_layer_call_and_return_conditional_losses_3622
Conv2/StatefulPartitionedCall?
Pool2/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool2_layer_call_and_return_conditional_losses_3722
Pool2/PartitionedCall?
D2/StatefulPartitionedCallStatefulPartitionedCallPool2/PartitionedCall:output:0^D1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D2_layer_call_and_return_conditional_losses_6322
D2/StatefulPartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCall#D2/StatefulPartitionedCall:output:0	conv3_880	conv3_882*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv3_layer_call_and_return_conditional_losses_3922
Conv3/StatefulPartitionedCall?
Pool3/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool3_layer_call_and_return_conditional_losses_4022
Pool3/PartitionedCall?
D3/StatefulPartitionedCallStatefulPartitionedCallPool3/PartitionedCall:output:0^D2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D3_layer_call_and_return_conditional_losses_5942
D3/StatefulPartitionedCall?
Conv4/StatefulPartitionedCallStatefulPartitionedCall#D3/StatefulPartitionedCall:output:0	conv4_887	conv4_889*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv4_layer_call_and_return_conditional_losses_4222
Conv4/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall&Conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_1_layer_call_and_return_conditional_losses_4342
flatten_1/PartitionedCall?
flatten/PartitionedCallPartitionedCall#D3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_4422
flatten/PartitionedCall?
fc11/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc11_894fc11_896*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_fc11_layer_call_and_return_conditional_losses_4542
fc11/StatefulPartitionedCall?
fc12/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc12_899fc12_901*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_fc12_layer_call_and_return_conditional_losses_4702
fc12/StatefulPartitionedCall?
add/PartitionedCallPartitionedCall%fc11/StatefulPartitionedCall:output:0%fc12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_add_layer_call_and_return_conditional_losses_4822
add/PartitionedCall?
deepid/PartitionedCallPartitionedCalladd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_deepid_layer_call_and_return_conditional_losses_4892
deepid/PartitionedCall{
IdentityIdentitydeepid/PartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^D1/StatefulPartitionedCall^D2/StatefulPartitionedCall^D3/StatefulPartitionedCall^fc11/StatefulPartitionedCall^fc12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall28
D1/StatefulPartitionedCallD1/StatefulPartitionedCall28
D2/StatefulPartitionedCallD2/StatefulPartitionedCall28
D3/StatefulPartitionedCallD3/StatefulPartitionedCall2<
fc11/StatefulPartitionedCallfc11/StatefulPartitionedCall2<
fc12/StatefulPartitionedCallfc12/StatefulPartitionedCall:X T
/
_output_shapes
:?????????7/
!
_user_specified_name	input_1
?@
?
>__inference_model_layer_call_and_return_conditional_losses_763

inputs#
	conv1_722:
	conv1_724:#
	conv2_729:(
	conv2_731:(#
	conv3_736:(<
	conv3_738:<#
	conv4_743:<P
	conv4_745:P
fc11_750:
?	?
fc11_752:	?
fc12_755:
??
fc12_757:	?
identity??Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Conv4/StatefulPartitionedCall?D1/StatefulPartitionedCall?D2/StatefulPartitionedCall?D3/StatefulPartitionedCall?fc11/StatefulPartitionedCall?fc12/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputs	conv1_722	conv1_724*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv1_layer_call_and_return_conditional_losses_3322
Conv1/StatefulPartitionedCall?
Pool1/PartitionedCallPartitionedCall&Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool1_layer_call_and_return_conditional_losses_3422
Pool1/PartitionedCall?
D1/StatefulPartitionedCallStatefulPartitionedCallPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D1_layer_call_and_return_conditional_losses_6702
D1/StatefulPartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCall#D1/StatefulPartitionedCall:output:0	conv2_729	conv2_731*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv2_layer_call_and_return_conditional_losses_3622
Conv2/StatefulPartitionedCall?
Pool2/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool2_layer_call_and_return_conditional_losses_3722
Pool2/PartitionedCall?
D2/StatefulPartitionedCallStatefulPartitionedCallPool2/PartitionedCall:output:0^D1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D2_layer_call_and_return_conditional_losses_6322
D2/StatefulPartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCall#D2/StatefulPartitionedCall:output:0	conv3_736	conv3_738*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv3_layer_call_and_return_conditional_losses_3922
Conv3/StatefulPartitionedCall?
Pool3/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool3_layer_call_and_return_conditional_losses_4022
Pool3/PartitionedCall?
D3/StatefulPartitionedCallStatefulPartitionedCallPool3/PartitionedCall:output:0^D2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D3_layer_call_and_return_conditional_losses_5942
D3/StatefulPartitionedCall?
Conv4/StatefulPartitionedCallStatefulPartitionedCall#D3/StatefulPartitionedCall:output:0	conv4_743	conv4_745*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv4_layer_call_and_return_conditional_losses_4222
Conv4/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall&Conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_1_layer_call_and_return_conditional_losses_4342
flatten_1/PartitionedCall?
flatten/PartitionedCallPartitionedCall#D3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_4422
flatten/PartitionedCall?
fc11/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc11_750fc11_752*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_fc11_layer_call_and_return_conditional_losses_4542
fc11/StatefulPartitionedCall?
fc12/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc12_755fc12_757*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_fc12_layer_call_and_return_conditional_losses_4702
fc12/StatefulPartitionedCall?
add/PartitionedCallPartitionedCall%fc11/StatefulPartitionedCall:output:0%fc12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_add_layer_call_and_return_conditional_losses_4822
add/PartitionedCall?
deepid/PartitionedCallPartitionedCalladd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_deepid_layer_call_and_return_conditional_losses_4892
deepid/PartitionedCall{
IdentityIdentitydeepid/PartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^D1/StatefulPartitionedCall^D2/StatefulPartitionedCall^D3/StatefulPartitionedCall^fc11/StatefulPartitionedCall^fc12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall28
D1/StatefulPartitionedCallD1/StatefulPartitionedCall28
D2/StatefulPartitionedCallD2/StatefulPartitionedCall28
D3/StatefulPartitionedCallD3/StatefulPartitionedCall2<
fc11/StatefulPartitionedCallfc11/StatefulPartitionedCall2<
fc12/StatefulPartitionedCallfc12/StatefulPartitionedCall:W S
/
_output_shapes
:?????????7/
 
_user_specified_nameinputs
?
[
?__inference_Pool2_layer_call_and_return_conditional_losses_1221

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
Y
;__inference_D3_layer_call_and_return_conditional_losses_409

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????<2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????<2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
f
<__inference_add_layer_call_and_return_conditional_losses_482

inputs
inputs_1
identityX
addAddV2inputsinputs_1*
T0*(
_output_shapes
:??????????2
add\
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??????????:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Z
<__inference_D3_layer_call_and_return_conditional_losses_1308

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????<2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????<2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
$__inference_Conv2_layer_call_fn_1216

inputs!
unknown:(
	unknown_0:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv2_layer_call_and_return_conditional_losses_3622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
>__inference_Conv4_layer_call_and_return_conditional_losses_422

inputs8
conv2d_readvariableop_resource:<P-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????P*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????P2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????P2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????P2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?

?
>__inference_fc12_layer_call_and_return_conditional_losses_1401

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
=
!__inference_D1_layer_call_fn_1191

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D1_layer_call_and_return_conditional_losses_3492
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?<
?
>__inference_model_layer_call_and_return_conditional_losses_492

inputs#
	conv1_333:
	conv1_335:#
	conv2_363:(
	conv2_365:(#
	conv3_393:(<
	conv3_395:<#
	conv4_423:<P
	conv4_425:P
fc11_455:
?	?
fc11_457:	?
fc12_471:
??
fc12_473:	?
identity??Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Conv4/StatefulPartitionedCall?fc11/StatefulPartitionedCall?fc12/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCallinputs	conv1_333	conv1_335*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????4,*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv1_layer_call_and_return_conditional_losses_3322
Conv1/StatefulPartitionedCall?
Pool1/PartitionedCallPartitionedCall&Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool1_layer_call_and_return_conditional_losses_3422
Pool1/PartitionedCall?
D1/PartitionedCallPartitionedCallPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D1_layer_call_and_return_conditional_losses_3492
D1/PartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCallD1/PartitionedCall:output:0	conv2_363	conv2_365*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv2_layer_call_and_return_conditional_losses_3622
Conv2/StatefulPartitionedCall?
Pool2/PartitionedCallPartitionedCall&Conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool2_layer_call_and_return_conditional_losses_3722
Pool2/PartitionedCall?
D2/PartitionedCallPartitionedCallPool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D2_layer_call_and_return_conditional_losses_3792
D2/PartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCallD2/PartitionedCall:output:0	conv3_393	conv3_395*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv3_layer_call_and_return_conditional_losses_3922
Conv3/StatefulPartitionedCall?
Pool3/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool3_layer_call_and_return_conditional_losses_4022
Pool3/PartitionedCall?
D3/PartitionedCallPartitionedCallPool3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *D
f?R=
;__inference_D3_layer_call_and_return_conditional_losses_4092
D3/PartitionedCall?
Conv4/StatefulPartitionedCallStatefulPartitionedCallD3/PartitionedCall:output:0	conv4_423	conv4_425*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv4_layer_call_and_return_conditional_losses_4222
Conv4/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall&Conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_1_layer_call_and_return_conditional_losses_4342
flatten_1/PartitionedCall?
flatten/PartitionedCallPartitionedCallD3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_4422
flatten/PartitionedCall?
fc11/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc11_455fc11_457*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_fc11_layer_call_and_return_conditional_losses_4542
fc11/StatefulPartitionedCall?
fc12/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0fc12_471fc12_473*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_fc12_layer_call_and_return_conditional_losses_4702
fc12/StatefulPartitionedCall?
add/PartitionedCallPartitionedCall%fc11/StatefulPartitionedCall:output:0%fc12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *E
f@R>
<__inference_add_layer_call_and_return_conditional_losses_4822
add/PartitionedCall?
deepid/PartitionedCallPartitionedCalladd/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_deepid_layer_call_and_return_conditional_losses_4892
deepid/PartitionedCall{
IdentityIdentitydeepid/PartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Conv4/StatefulPartitionedCall^fc11/StatefulPartitionedCall^fc12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2>
Conv4/StatefulPartitionedCallConv4/StatefulPartitionedCall2<
fc11/StatefulPartitionedCallfc11/StatefulPartitionedCall2<
fc12/StatefulPartitionedCallfc12/StatefulPartitionedCall:W S
/
_output_shapes
:?????????7/
 
_user_specified_nameinputs
?
?
#__inference_fc11_layer_call_fn_1391

inputs
unknown:
?	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_fc11_layer_call_and_return_conditional_losses_4542
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?M
?	
__inference__wrapped_model_248
input_1D
*model_conv1_conv2d_readvariableop_resource:9
+model_conv1_biasadd_readvariableop_resource:D
*model_conv2_conv2d_readvariableop_resource:(9
+model_conv2_biasadd_readvariableop_resource:(D
*model_conv3_conv2d_readvariableop_resource:(<9
+model_conv3_biasadd_readvariableop_resource:<D
*model_conv4_conv2d_readvariableop_resource:<P9
+model_conv4_biasadd_readvariableop_resource:P=
)model_fc11_matmul_readvariableop_resource:
?	?9
*model_fc11_biasadd_readvariableop_resource:	?=
)model_fc12_matmul_readvariableop_resource:
??9
*model_fc12_biasadd_readvariableop_resource:	?
identity??"model/Conv1/BiasAdd/ReadVariableOp?!model/Conv1/Conv2D/ReadVariableOp?"model/Conv2/BiasAdd/ReadVariableOp?!model/Conv2/Conv2D/ReadVariableOp?"model/Conv3/BiasAdd/ReadVariableOp?!model/Conv3/Conv2D/ReadVariableOp?"model/Conv4/BiasAdd/ReadVariableOp?!model/Conv4/Conv2D/ReadVariableOp?!model/fc11/BiasAdd/ReadVariableOp? model/fc11/MatMul/ReadVariableOp?!model/fc12/BiasAdd/ReadVariableOp? model/fc12/MatMul/ReadVariableOp?
!model/Conv1/Conv2D/ReadVariableOpReadVariableOp*model_conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!model/Conv1/Conv2D/ReadVariableOp?
model/Conv1/Conv2DConv2Dinput_1)model/Conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4,*
paddingVALID*
strides
2
model/Conv1/Conv2D?
"model/Conv1/BiasAdd/ReadVariableOpReadVariableOp+model_conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"model/Conv1/BiasAdd/ReadVariableOp?
model/Conv1/BiasAddBiasAddmodel/Conv1/Conv2D:output:0*model/Conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4,2
model/Conv1/BiasAdd?
model/Conv1/ReluRelumodel/Conv1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????4,2
model/Conv1/Relu?
model/Pool1/MaxPoolMaxPoolmodel/Conv1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
model/Pool1/MaxPool?
model/D1/IdentityIdentitymodel/Pool1/MaxPool:output:0*
T0*/
_output_shapes
:?????????2
model/D1/Identity?
!model/Conv2/Conv2D/ReadVariableOpReadVariableOp*model_conv2_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype02#
!model/Conv2/Conv2D/ReadVariableOp?
model/Conv2/Conv2DConv2Dmodel/D1/Identity:output:0)model/Conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingVALID*
strides
2
model/Conv2/Conv2D?
"model/Conv2/BiasAdd/ReadVariableOpReadVariableOp+model_conv2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02$
"model/Conv2/BiasAdd/ReadVariableOp?
model/Conv2/BiasAddBiasAddmodel/Conv2/Conv2D:output:0*model/Conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(2
model/Conv2/BiasAdd?
model/Conv2/ReluRelumodel/Conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????(2
model/Conv2/Relu?
model/Pool2/MaxPoolMaxPoolmodel/Conv2/Relu:activations:0*/
_output_shapes
:?????????
(*
ksize
*
paddingVALID*
strides
2
model/Pool2/MaxPool?
model/D2/IdentityIdentitymodel/Pool2/MaxPool:output:0*
T0*/
_output_shapes
:?????????
(2
model/D2/Identity?
!model/Conv3/Conv2D/ReadVariableOpReadVariableOp*model_conv3_conv2d_readvariableop_resource*&
_output_shapes
:(<*
dtype02#
!model/Conv3/Conv2D/ReadVariableOp?
model/Conv3/Conv2DConv2Dmodel/D2/Identity:output:0)model/Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
<*
paddingVALID*
strides
2
model/Conv3/Conv2D?
"model/Conv3/BiasAdd/ReadVariableOpReadVariableOp+model_conv3_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02$
"model/Conv3/BiasAdd/ReadVariableOp?
model/Conv3/BiasAddBiasAddmodel/Conv3/Conv2D:output:0*model/Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
<2
model/Conv3/BiasAdd?
model/Conv3/ReluRelumodel/Conv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
<2
model/Conv3/Relu?
model/Pool3/MaxPoolMaxPoolmodel/Conv3/Relu:activations:0*/
_output_shapes
:?????????<*
ksize
*
paddingVALID*
strides
2
model/Pool3/MaxPool?
model/D3/IdentityIdentitymodel/Pool3/MaxPool:output:0*
T0*/
_output_shapes
:?????????<2
model/D3/Identity?
!model/Conv4/Conv2D/ReadVariableOpReadVariableOp*model_conv4_conv2d_readvariableop_resource*&
_output_shapes
:<P*
dtype02#
!model/Conv4/Conv2D/ReadVariableOp?
model/Conv4/Conv2DConv2Dmodel/D3/Identity:output:0)model/Conv4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????P*
paddingVALID*
strides
2
model/Conv4/Conv2D?
"model/Conv4/BiasAdd/ReadVariableOpReadVariableOp+model_conv4_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02$
"model/Conv4/BiasAdd/ReadVariableOp?
model/Conv4/BiasAddBiasAddmodel/Conv4/Conv2D:output:0*model/Conv4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????P2
model/Conv4/BiasAdd?
model/Conv4/ReluRelumodel/Conv4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????P2
model/Conv4/Relu
model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
model/flatten_1/Const?
model/flatten_1/ReshapeReshapemodel/Conv4/Relu:activations:0model/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
model/flatten_1/Reshape{
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
model/flatten/Const?
model/flatten/ReshapeReshapemodel/D3/Identity:output:0model/flatten/Const:output:0*
T0*(
_output_shapes
:??????????	2
model/flatten/Reshape?
 model/fc11/MatMul/ReadVariableOpReadVariableOp)model_fc11_matmul_readvariableop_resource* 
_output_shapes
:
?	?*
dtype02"
 model/fc11/MatMul/ReadVariableOp?
model/fc11/MatMulMatMulmodel/flatten/Reshape:output:0(model/fc11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/fc11/MatMul?
!model/fc11/BiasAdd/ReadVariableOpReadVariableOp*model_fc11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!model/fc11/BiasAdd/ReadVariableOp?
model/fc11/BiasAddBiasAddmodel/fc11/MatMul:product:0)model/fc11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/fc11/BiasAdd?
 model/fc12/MatMul/ReadVariableOpReadVariableOp)model_fc12_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 model/fc12/MatMul/ReadVariableOp?
model/fc12/MatMulMatMul model/flatten_1/Reshape:output:0(model/fc12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/fc12/MatMul?
!model/fc12/BiasAdd/ReadVariableOpReadVariableOp*model_fc12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!model/fc12/BiasAdd/ReadVariableOp?
model/fc12/BiasAddBiasAddmodel/fc12/MatMul:product:0)model/fc12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/fc12/BiasAdd?
model/add/addAddV2model/fc11/BiasAdd:output:0model/fc12/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model/add/addt
model/deepid/ReluRelumodel/add/add:z:0*
T0*(
_output_shapes
:??????????2
model/deepid/Relu{
IdentityIdentitymodel/deepid/Relu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^model/Conv1/BiasAdd/ReadVariableOp"^model/Conv1/Conv2D/ReadVariableOp#^model/Conv2/BiasAdd/ReadVariableOp"^model/Conv2/Conv2D/ReadVariableOp#^model/Conv3/BiasAdd/ReadVariableOp"^model/Conv3/Conv2D/ReadVariableOp#^model/Conv4/BiasAdd/ReadVariableOp"^model/Conv4/Conv2D/ReadVariableOp"^model/fc11/BiasAdd/ReadVariableOp!^model/fc11/MatMul/ReadVariableOp"^model/fc12/BiasAdd/ReadVariableOp!^model/fc12/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????7/: : : : : : : : : : : : 2H
"model/Conv1/BiasAdd/ReadVariableOp"model/Conv1/BiasAdd/ReadVariableOp2F
!model/Conv1/Conv2D/ReadVariableOp!model/Conv1/Conv2D/ReadVariableOp2H
"model/Conv2/BiasAdd/ReadVariableOp"model/Conv2/BiasAdd/ReadVariableOp2F
!model/Conv2/Conv2D/ReadVariableOp!model/Conv2/Conv2D/ReadVariableOp2H
"model/Conv3/BiasAdd/ReadVariableOp"model/Conv3/BiasAdd/ReadVariableOp2F
!model/Conv3/Conv2D/ReadVariableOp!model/Conv3/Conv2D/ReadVariableOp2H
"model/Conv4/BiasAdd/ReadVariableOp"model/Conv4/BiasAdd/ReadVariableOp2F
!model/Conv4/Conv2D/ReadVariableOp!model/Conv4/Conv2D/ReadVariableOp2F
!model/fc11/BiasAdd/ReadVariableOp!model/fc11/BiasAdd/ReadVariableOp2D
 model/fc11/MatMul/ReadVariableOp model/fc11/MatMul/ReadVariableOp2F
!model/fc12/BiasAdd/ReadVariableOp!model/fc12/BiasAdd/ReadVariableOp2D
 model/fc12/MatMul/ReadVariableOp model/fc12/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????7/
!
_user_specified_name	input_1
?
^
B__inference_flatten_1_layer_call_and_return_conditional_losses_434

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????P:W S
/
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
@
$__inference_Pool2_layer_call_fn_1231

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Pool2_layer_call_and_return_conditional_losses_2792
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
$__inference_Conv4_layer_call_fn_1350

inputs!
unknown:<P
	unknown_0:P
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_Conv4_layer_call_and_return_conditional_losses_4222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????P2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
\
@__inference_flatten_layer_call_and_return_conditional_losses_442

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????	2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<:W S
/
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
D
(__inference_flatten_1_layer_call_fn_1372

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_1_layer_call_and_return_conditional_losses_4342
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????P:W S
/
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
Y
;__inference_D2_layer_call_and_return_conditional_losses_379

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????
(2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????
(2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
(:W S
/
_output_shapes
:?????????
(
 
_user_specified_nameinputs
?
?
?__inference_Conv1_layer_call_and_return_conditional_losses_1140

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4,*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????4,2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????4,2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????4,2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????7/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????7/
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????7/;
deepid1
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer_with_weights-5
layer-14
layer-15
layer-16
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
regularization_losses
trainable_variables
	variables
 	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
!regularization_losses
"trainable_variables
#	variables
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

%kernel
&bias
'regularization_losses
(trainable_variables
)	variables
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
+regularization_losses
,trainable_variables
-	variables
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
/regularization_losses
0trainable_variables
1	variables
2	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

3kernel
4bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
9regularization_losses
:trainable_variables
;	variables
<	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
=regularization_losses
>trainable_variables
?	variables
@	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Akernel
Bbias
Cregularization_losses
Dtrainable_variables
E	variables
F	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Okernel
Pbias
Qregularization_losses
Rtrainable_variables
S	variables
T	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Ukernel
Vbias
Wregularization_losses
Xtrainable_variables
Y	variables
Z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
[regularization_losses
\trainable_variables
]	variables
^	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
_regularization_losses
`trainable_variables
a	variables
b	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
 "
trackable_list_wrapper
v
0
1
%2
&3
34
45
A6
B7
O8
P9
U10
V11"
trackable_list_wrapper
v
0
1
%2
&3
34
45
A6
B7
O8
P9
U10
V11"
trackable_list_wrapper
?
regularization_losses
trainable_variables
clayer_regularization_losses
dnon_trainable_variables

elayers
	variables
fmetrics
glayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
&:$2Conv1/kernel
:2
Conv1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses
trainable_variables
hlayer_regularization_losses
inon_trainable_variables

jlayers
	variables
kmetrics
llayer_metrics
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
regularization_losses
trainable_variables
mlayer_regularization_losses
nnon_trainable_variables

olayers
	variables
pmetrics
qlayer_metrics
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
!regularization_losses
"trainable_variables
rlayer_regularization_losses
snon_trainable_variables

tlayers
#	variables
umetrics
vlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$(2Conv2/kernel
:(2
Conv2/bias
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
'regularization_losses
(trainable_variables
wlayer_regularization_losses
xnon_trainable_variables

ylayers
)	variables
zmetrics
{layer_metrics
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
+regularization_losses
,trainable_variables
|layer_regularization_losses
}non_trainable_variables

~layers
-	variables
metrics
?layer_metrics
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
/regularization_losses
0trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
1	variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$(<2Conv3/kernel
:<2
Conv3/bias
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
5regularization_losses
6trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
7	variables
?metrics
?layer_metrics
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
9regularization_losses
:trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
;	variables
?metrics
?layer_metrics
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
=regularization_losses
>trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
?	variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$<P2Conv4/kernel
:P2
Conv4/bias
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
?
Cregularization_losses
Dtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
E	variables
?metrics
?layer_metrics
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
Gregularization_losses
Htrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
I	variables
?metrics
?layer_metrics
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
Kregularization_losses
Ltrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
M	variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:
?	?2fc11/kernel
:?2	fc11/bias
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
?
Qregularization_losses
Rtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
S	variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:
??2fc12/kernel
:?2	fc12/bias
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
?
Wregularization_losses
Xtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
Y	variables
?metrics
?layer_metrics
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
[regularization_losses
\trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
]	variables
?metrics
?layer_metrics
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
_regularization_losses
`trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?layers
a	variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
16"
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
?2?
>__inference_model_layer_call_and_return_conditional_losses_994
?__inference_model_layer_call_and_return_conditional_losses_1071
>__inference_model_layer_call_and_return_conditional_losses_863
>__inference_model_layer_call_and_return_conditional_losses_907?
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
?B?
__inference__wrapped_model_248input_1"?
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
?2?
#__inference_model_layer_call_fn_519
$__inference_model_layer_call_fn_1100
$__inference_model_layer_call_fn_1129
#__inference_model_layer_call_fn_819?
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
?2?
?__inference_Conv1_layer_call_and_return_conditional_losses_1140?
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
$__inference_Conv1_layer_call_fn_1149?
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
?__inference_Pool1_layer_call_and_return_conditional_losses_1154
?__inference_Pool1_layer_call_and_return_conditional_losses_1159?
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
$__inference_Pool1_layer_call_fn_1164
$__inference_Pool1_layer_call_fn_1169?
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
<__inference_D1_layer_call_and_return_conditional_losses_1174
<__inference_D1_layer_call_and_return_conditional_losses_1186?
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
?2?
!__inference_D1_layer_call_fn_1191
!__inference_D1_layer_call_fn_1196?
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
?__inference_Conv2_layer_call_and_return_conditional_losses_1207?
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
$__inference_Conv2_layer_call_fn_1216?
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
?__inference_Pool2_layer_call_and_return_conditional_losses_1221
?__inference_Pool2_layer_call_and_return_conditional_losses_1226?
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
$__inference_Pool2_layer_call_fn_1231
$__inference_Pool2_layer_call_fn_1236?
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
<__inference_D2_layer_call_and_return_conditional_losses_1241
<__inference_D2_layer_call_and_return_conditional_losses_1253?
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
?2?
!__inference_D2_layer_call_fn_1258
!__inference_D2_layer_call_fn_1263?
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
?__inference_Conv3_layer_call_and_return_conditional_losses_1274?
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
$__inference_Conv3_layer_call_fn_1283?
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
?__inference_Pool3_layer_call_and_return_conditional_losses_1288
?__inference_Pool3_layer_call_and_return_conditional_losses_1293?
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
$__inference_Pool3_layer_call_fn_1298
$__inference_Pool3_layer_call_fn_1303?
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
<__inference_D3_layer_call_and_return_conditional_losses_1308
<__inference_D3_layer_call_and_return_conditional_losses_1320?
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
?2?
!__inference_D3_layer_call_fn_1325
!__inference_D3_layer_call_fn_1330?
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
?__inference_Conv4_layer_call_and_return_conditional_losses_1341?
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
$__inference_Conv4_layer_call_fn_1350?
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
A__inference_flatten_layer_call_and_return_conditional_losses_1356?
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
&__inference_flatten_layer_call_fn_1361?
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
C__inference_flatten_1_layer_call_and_return_conditional_losses_1367?
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
(__inference_flatten_1_layer_call_fn_1372?
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
>__inference_fc11_layer_call_and_return_conditional_losses_1382?
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
#__inference_fc11_layer_call_fn_1391?
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
>__inference_fc12_layer_call_and_return_conditional_losses_1401?
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
#__inference_fc12_layer_call_fn_1410?
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
=__inference_add_layer_call_and_return_conditional_losses_1416?
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
"__inference_add_layer_call_fn_1422?
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
@__inference_deepid_layer_call_and_return_conditional_losses_1427?
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
%__inference_deepid_layer_call_fn_1432?
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
?B?
!__inference_signature_wrapper_938input_1"?
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
 ?
?__inference_Conv1_layer_call_and_return_conditional_losses_1140l7?4
-?*
(?%
inputs?????????7/
? "-?*
#? 
0?????????4,
? ?
$__inference_Conv1_layer_call_fn_1149_7?4
-?*
(?%
inputs?????????7/
? " ??????????4,?
?__inference_Conv2_layer_call_and_return_conditional_losses_1207l%&7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????(
? ?
$__inference_Conv2_layer_call_fn_1216_%&7?4
-?*
(?%
inputs?????????
? " ??????????(?
?__inference_Conv3_layer_call_and_return_conditional_losses_1274l347?4
-?*
(?%
inputs?????????
(
? "-?*
#? 
0?????????
<
? ?
$__inference_Conv3_layer_call_fn_1283_347?4
-?*
(?%
inputs?????????
(
? " ??????????
<?
?__inference_Conv4_layer_call_and_return_conditional_losses_1341lAB7?4
-?*
(?%
inputs?????????<
? "-?*
#? 
0?????????P
? ?
$__inference_Conv4_layer_call_fn_1350_AB7?4
-?*
(?%
inputs?????????<
? " ??????????P?
<__inference_D1_layer_call_and_return_conditional_losses_1174l;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
<__inference_D1_layer_call_and_return_conditional_losses_1186l;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
!__inference_D1_layer_call_fn_1191_;?8
1?.
(?%
inputs?????????
p 
? " ???????????
!__inference_D1_layer_call_fn_1196_;?8
1?.
(?%
inputs?????????
p
? " ???????????
<__inference_D2_layer_call_and_return_conditional_losses_1241l;?8
1?.
(?%
inputs?????????
(
p 
? "-?*
#? 
0?????????
(
? ?
<__inference_D2_layer_call_and_return_conditional_losses_1253l;?8
1?.
(?%
inputs?????????
(
p
? "-?*
#? 
0?????????
(
? ?
!__inference_D2_layer_call_fn_1258_;?8
1?.
(?%
inputs?????????
(
p 
? " ??????????
(?
!__inference_D2_layer_call_fn_1263_;?8
1?.
(?%
inputs?????????
(
p
? " ??????????
(?
<__inference_D3_layer_call_and_return_conditional_losses_1308l;?8
1?.
(?%
inputs?????????<
p 
? "-?*
#? 
0?????????<
? ?
<__inference_D3_layer_call_and_return_conditional_losses_1320l;?8
1?.
(?%
inputs?????????<
p
? "-?*
#? 
0?????????<
? ?
!__inference_D3_layer_call_fn_1325_;?8
1?.
(?%
inputs?????????<
p 
? " ??????????<?
!__inference_D3_layer_call_fn_1330_;?8
1?.
(?%
inputs?????????<
p
? " ??????????<?
?__inference_Pool1_layer_call_and_return_conditional_losses_1154?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
?__inference_Pool1_layer_call_and_return_conditional_losses_1159h7?4
-?*
(?%
inputs?????????4,
? "-?*
#? 
0?????????
? ?
$__inference_Pool1_layer_call_fn_1164?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
$__inference_Pool1_layer_call_fn_1169[7?4
-?*
(?%
inputs?????????4,
? " ???????????
?__inference_Pool2_layer_call_and_return_conditional_losses_1221?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
?__inference_Pool2_layer_call_and_return_conditional_losses_1226h7?4
-?*
(?%
inputs?????????(
? "-?*
#? 
0?????????
(
? ?
$__inference_Pool2_layer_call_fn_1231?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
$__inference_Pool2_layer_call_fn_1236[7?4
-?*
(?%
inputs?????????(
? " ??????????
(?
?__inference_Pool3_layer_call_and_return_conditional_losses_1288?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
?__inference_Pool3_layer_call_and_return_conditional_losses_1293h7?4
-?*
(?%
inputs?????????
<
? "-?*
#? 
0?????????<
? ?
$__inference_Pool3_layer_call_fn_1298?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
$__inference_Pool3_layer_call_fn_1303[7?4
-?*
(?%
inputs?????????
<
? " ??????????<?
__inference__wrapped_model_248z%&34ABOPUV8?5
.?+
)?&
input_1?????????7/
? "0?-
+
deepid!?
deepid???????????
=__inference_add_layer_call_and_return_conditional_losses_1416?\?Y
R?O
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
? "&?#
?
0??????????
? ?
"__inference_add_layer_call_fn_1422y\?Y
R?O
M?J
#? 
inputs/0??????????
#? 
inputs/1??????????
? "????????????
@__inference_deepid_layer_call_and_return_conditional_losses_1427Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? v
%__inference_deepid_layer_call_fn_1432M0?-
&?#
!?
inputs??????????
? "????????????
>__inference_fc11_layer_call_and_return_conditional_losses_1382^OP0?-
&?#
!?
inputs??????????	
? "&?#
?
0??????????
? x
#__inference_fc11_layer_call_fn_1391QOP0?-
&?#
!?
inputs??????????	
? "????????????
>__inference_fc12_layer_call_and_return_conditional_losses_1401^UV0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? x
#__inference_fc12_layer_call_fn_1410QUV0?-
&?#
!?
inputs??????????
? "????????????
C__inference_flatten_1_layer_call_and_return_conditional_losses_1367a7?4
-?*
(?%
inputs?????????P
? "&?#
?
0??????????
? ?
(__inference_flatten_1_layer_call_fn_1372T7?4
-?*
(?%
inputs?????????P
? "????????????
A__inference_flatten_layer_call_and_return_conditional_losses_1356a7?4
-?*
(?%
inputs?????????<
? "&?#
?
0??????????	
? ~
&__inference_flatten_layer_call_fn_1361T7?4
-?*
(?%
inputs?????????<
? "???????????	?
?__inference_model_layer_call_and_return_conditional_losses_1071w%&34ABOPUV??<
5?2
(?%
inputs?????????7/
p

 
? "&?#
?
0??????????
? ?
>__inference_model_layer_call_and_return_conditional_losses_863x%&34ABOPUV@?=
6?3
)?&
input_1?????????7/
p 

 
? "&?#
?
0??????????
? ?
>__inference_model_layer_call_and_return_conditional_losses_907x%&34ABOPUV@?=
6?3
)?&
input_1?????????7/
p

 
? "&?#
?
0??????????
? ?
>__inference_model_layer_call_and_return_conditional_losses_994w%&34ABOPUV??<
5?2
(?%
inputs?????????7/
p 

 
? "&?#
?
0??????????
? ?
$__inference_model_layer_call_fn_1100j%&34ABOPUV??<
5?2
(?%
inputs?????????7/
p 

 
? "????????????
$__inference_model_layer_call_fn_1129j%&34ABOPUV??<
5?2
(?%
inputs?????????7/
p

 
? "????????????
#__inference_model_layer_call_fn_519k%&34ABOPUV@?=
6?3
)?&
input_1?????????7/
p 

 
? "????????????
#__inference_model_layer_call_fn_819k%&34ABOPUV@?=
6?3
)?&
input_1?????????7/
p

 
? "????????????
!__inference_signature_wrapper_938?%&34ABOPUVC?@
? 
9?6
4
input_1)?&
input_1?????????7/"0?-
+
deepid!?
deepid??????????