??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
}
dense_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_128/kernel
v
$dense_128/kernel/Read/ReadVariableOpReadVariableOpdense_128/kernel*
_output_shapes
:	?*
dtype0
u
dense_128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_128/bias
n
"dense_128/bias/Read/ReadVariableOpReadVariableOpdense_128/bias*
_output_shapes	
:?*
dtype0
}
dense_129/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_129/kernel
v
$dense_129/kernel/Read/ReadVariableOpReadVariableOpdense_129/kernel*
_output_shapes
:	?*
dtype0
t
dense_129/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_129/bias
m
"dense_129/bias/Read/ReadVariableOpReadVariableOpdense_129/bias*
_output_shapes
:*
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

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
sequence
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature


signatures*
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
:
iter
	decay
learning_rate
momentum*
 
0
1
2
3*
 
0
1
2
3*
* 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

 serving_default* 
?

kernel
bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
?

kernel
bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses*
 
0
1
2
3*
 
0
1
2
3*
* 
?
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_128/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_128/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_129/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_129/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*

20
31*
* 
* 
* 

0
1*

0
1*
* 
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
* 

0
1*
* 
* 
* 
8
	>total
	?count
@	variables
A	keras_api*
H
	Btotal
	Ccount
D
_fn_kwargs
E	variables
F	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

>0
?1*

@	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

B0
C1*

E	variables*
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense_128/kerneldense_128/biasdense_129/kerneldense_129/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_830420
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp$dense_128/kernel/Read/ReadVariableOp"dense_128/bias/Read/ReadVariableOp$dense_129/kernel/Read/ReadVariableOp"dense_129/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_830645
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameSGD/iter	SGD/decaySGD/learning_rateSGD/momentumdense_128/kerneldense_128/biasdense_129/kerneldense_129/biastotalcounttotal_1count_1*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_830691??
?
?
2__inference_neural_network_64_layer_call_fn_830356
x
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830206o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830195

inputs;
(dense_128_matmul_readvariableop_resource:	?8
)dense_128_biasadd_readvariableop_resource:	?;
(dense_129_matmul_readvariableop_resource:	?7
)dense_129_biasadd_readvariableop_resource:
identity?? dense_128/BiasAdd/ReadVariableOp?dense_128/MatMul/ReadVariableOp? dense_129/BiasAdd/ReadVariableOp?dense_129/MatMul/ReadVariableOp_
dense_128/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_128/MatMul/ReadVariableOpReadVariableOp(dense_128_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_128/MatMulMatMuldense_128/Cast:y:0'dense_128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_128/BiasAdd/ReadVariableOpReadVariableOp)dense_128_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_128/BiasAddBiasAdddense_128/MatMul:product:0(dense_128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_128/ReluReludense_128/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_129/MatMul/ReadVariableOpReadVariableOp(dense_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_129/MatMulMatMuldense_128/Relu:activations:0'dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_129/BiasAdd/ReadVariableOpReadVariableOp)dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_129/BiasAddBiasAdddense_129/MatMul:product:0(dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_129/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_128/BiasAdd/ReadVariableOp ^dense_128/MatMul/ReadVariableOp!^dense_129/BiasAdd/ReadVariableOp ^dense_129/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2D
 dense_128/BiasAdd/ReadVariableOp dense_128/BiasAdd/ReadVariableOp2B
dense_128/MatMul/ReadVariableOpdense_128/MatMul/ReadVariableOp2D
 dense_129/BiasAdd/ReadVariableOp dense_129/BiasAdd/ReadVariableOp2B
dense_129/MatMul/ReadVariableOpdense_129/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830387
xI
6sequential_64_dense_128_matmul_readvariableop_resource:	?F
7sequential_64_dense_128_biasadd_readvariableop_resource:	?I
6sequential_64_dense_129_matmul_readvariableop_resource:	?E
7sequential_64_dense_129_biasadd_readvariableop_resource:
identity??.sequential_64/dense_128/BiasAdd/ReadVariableOp?-sequential_64/dense_128/MatMul/ReadVariableOp?.sequential_64/dense_129/BiasAdd/ReadVariableOp?-sequential_64/dense_129/MatMul/ReadVariableOph
sequential_64/dense_128/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:??????????
-sequential_64/dense_128/MatMul/ReadVariableOpReadVariableOp6sequential_64_dense_128_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_64/dense_128/MatMulMatMul sequential_64/dense_128/Cast:y:05sequential_64/dense_128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_64/dense_128/BiasAdd/ReadVariableOpReadVariableOp7sequential_64_dense_128_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_64/dense_128/BiasAddBiasAdd(sequential_64/dense_128/MatMul:product:06sequential_64/dense_128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
sequential_64/dense_128/ReluRelu(sequential_64/dense_128/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
-sequential_64/dense_129/MatMul/ReadVariableOpReadVariableOp6sequential_64_dense_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_64/dense_129/MatMulMatMul*sequential_64/dense_128/Relu:activations:05sequential_64/dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_64/dense_129/BiasAdd/ReadVariableOpReadVariableOp7sequential_64_dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_64/dense_129/BiasAddBiasAdd(sequential_64/dense_129/MatMul:product:06sequential_64/dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????w
IdentityIdentity(sequential_64/dense_129/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^sequential_64/dense_128/BiasAdd/ReadVariableOp.^sequential_64/dense_128/MatMul/ReadVariableOp/^sequential_64/dense_129/BiasAdd/ReadVariableOp.^sequential_64/dense_129/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2`
.sequential_64/dense_128/BiasAdd/ReadVariableOp.sequential_64/dense_128/BiasAdd/ReadVariableOp2^
-sequential_64/dense_128/MatMul/ReadVariableOp-sequential_64/dense_128/MatMul/ReadVariableOp2`
.sequential_64/dense_129/BiasAdd/ReadVariableOp.sequential_64/dense_129/BiasAdd/ReadVariableOp2^
-sequential_64/dense_129/MatMul/ReadVariableOp-sequential_64/dense_129/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830056

inputs#
dense_128_830034:	?
dense_128_830036:	?#
dense_129_830050:	?
dense_129_830052:
identity??!dense_128/StatefulPartitionedCall?!dense_129/StatefulPartitionedCallU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
!dense_128/StatefulPartitionedCallStatefulPartitionedCallCast:y:0dense_128_830034dense_128_830036*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_128_layer_call_and_return_conditional_losses_830033?
!dense_129/StatefulPartitionedCallStatefulPartitionedCall*dense_128/StatefulPartitionedCall:output:0dense_129_830050dense_129_830052*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_129_layer_call_and_return_conditional_losses_830049y
IdentityIdentity*dense_129/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_128/StatefulPartitionedCall"^dense_129/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2F
!dense_129/StatefulPartitionedCall!dense_129/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830510

inputs;
(dense_128_matmul_readvariableop_resource:	?8
)dense_128_biasadd_readvariableop_resource:	?;
(dense_129_matmul_readvariableop_resource:	?7
)dense_129_biasadd_readvariableop_resource:
identity?? dense_128/BiasAdd/ReadVariableOp?dense_128/MatMul/ReadVariableOp? dense_129/BiasAdd/ReadVariableOp?dense_129/MatMul/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????a
dense_128/CastCastCast:y:0*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_128/MatMul/ReadVariableOpReadVariableOp(dense_128_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_128/MatMulMatMuldense_128/Cast:y:0'dense_128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_128/BiasAdd/ReadVariableOpReadVariableOp)dense_128_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_128/BiasAddBiasAdddense_128/MatMul:product:0(dense_128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_128/ReluReludense_128/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_129/MatMul/ReadVariableOpReadVariableOp(dense_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_129/MatMulMatMuldense_128/Relu:activations:0'dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_129/BiasAdd/ReadVariableOpReadVariableOp)dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_129/BiasAddBiasAdddense_129/MatMul:product:0(dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_129/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_128/BiasAdd/ReadVariableOp ^dense_128/MatMul/ReadVariableOp!^dense_129/BiasAdd/ReadVariableOp ^dense_129/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2D
 dense_128/BiasAdd/ReadVariableOp dense_128/BiasAdd/ReadVariableOp2B
dense_128/MatMul/ReadVariableOpdense_128/MatMul/ReadVariableOp2D
 dense_129/BiasAdd/ReadVariableOp dense_129/BiasAdd/ReadVariableOp2B
dense_129/MatMul/ReadVariableOpdense_129/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_129_layer_call_and_return_conditional_losses_830586

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830326
input_1'
sequential_64_830316:	?#
sequential_64_830318:	?'
sequential_64_830320:	?"
sequential_64_830322:
identity??%sequential_64/StatefulPartitionedCall?
%sequential_64/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_64_830316sequential_64_830318sequential_64_830320sequential_64_830322*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_64_layer_call_and_return_conditional_losses_830195}
IdentityIdentity.sequential_64/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????n
NoOpNoOp&^sequential_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2N
%sequential_64/StatefulPartitionedCall%sequential_64/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
.__inference_sequential_64_layer_call_fn_830067
dense_128_input
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_128_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_64_layer_call_and_return_conditional_losses_830056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_128_input
?
?
2__inference_neural_network_64_layer_call_fn_830217
input_1
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830206o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830117

inputs#
dense_128_830106:	?
dense_128_830108:	?#
dense_129_830111:	?
dense_129_830113:
identity??!dense_128/StatefulPartitionedCall?!dense_129/StatefulPartitionedCallU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
!dense_128/StatefulPartitionedCallStatefulPartitionedCallCast:y:0dense_128_830106dense_128_830108*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_128_layer_call_and_return_conditional_losses_830033?
!dense_129/StatefulPartitionedCallStatefulPartitionedCall*dense_128/StatefulPartitionedCall:output:0dense_129_830111dense_129_830113*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_129_layer_call_and_return_conditional_losses_830049y
IdentityIdentity*dense_129/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_128/StatefulPartitionedCall"^dense_129/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2F
!dense_129/StatefulPartitionedCall!dense_129/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
2__inference_neural_network_64_layer_call_fn_830313
input_1
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830528

inputs;
(dense_128_matmul_readvariableop_resource:	?8
)dense_128_biasadd_readvariableop_resource:	?;
(dense_129_matmul_readvariableop_resource:	?7
)dense_129_biasadd_readvariableop_resource:
identity?? dense_128/BiasAdd/ReadVariableOp?dense_128/MatMul/ReadVariableOp? dense_129/BiasAdd/ReadVariableOp?dense_129/MatMul/ReadVariableOp_
dense_128/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_128/MatMul/ReadVariableOpReadVariableOp(dense_128_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_128/MatMulMatMuldense_128/Cast:y:0'dense_128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_128/BiasAdd/ReadVariableOpReadVariableOp)dense_128_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_128/BiasAddBiasAdddense_128/MatMul:product:0(dense_128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_128/ReluReludense_128/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_129/MatMul/ReadVariableOpReadVariableOp(dense_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_129/MatMulMatMuldense_128/Relu:activations:0'dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_129/BiasAdd/ReadVariableOpReadVariableOp)dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_129/BiasAddBiasAdddense_129/MatMul:product:0(dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_129/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_128/BiasAdd/ReadVariableOp ^dense_128/MatMul/ReadVariableOp!^dense_129/BiasAdd/ReadVariableOp ^dense_129/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2D
 dense_128/BiasAdd/ReadVariableOp dense_128/BiasAdd/ReadVariableOp2B
dense_128/MatMul/ReadVariableOpdense_128/MatMul/ReadVariableOp2D
 dense_129/BiasAdd/ReadVariableOp dense_129/BiasAdd/ReadVariableOp2B
dense_129/MatMul/ReadVariableOpdense_129/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830206
x'
sequential_64_830196:	?#
sequential_64_830198:	?'
sequential_64_830200:	?"
sequential_64_830202:
identity??%sequential_64/StatefulPartitionedCall?
%sequential_64/StatefulPartitionedCallStatefulPartitionedCallxsequential_64_830196sequential_64_830198sequential_64_830200sequential_64_830202*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_64_layer_call_and_return_conditional_losses_830195}
IdentityIdentity.sequential_64/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????n
NoOpNoOp&^sequential_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2N
%sequential_64/StatefulPartitionedCall%sequential_64/StatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
*__inference_dense_129_layer_call_fn_830576

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_129_layer_call_and_return_conditional_losses_830049o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_64_layer_call_fn_830446

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_64_layer_call_and_return_conditional_losses_830117o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830289
x'
sequential_64_830279:	?#
sequential_64_830281:	?'
sequential_64_830283:	?"
sequential_64_830285:
identity??%sequential_64/StatefulPartitionedCall?
%sequential_64/StatefulPartitionedCallStatefulPartitionedCallxsequential_64_830279sequential_64_830281sequential_64_830283sequential_64_830285*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_64_layer_call_and_return_conditional_losses_830250}
IdentityIdentity.sequential_64/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????n
NoOpNoOp&^sequential_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2N
%sequential_64/StatefulPartitionedCall%sequential_64/StatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
.__inference_sequential_64_layer_call_fn_830459

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_64_layer_call_and_return_conditional_losses_830195o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830250

inputs;
(dense_128_matmul_readvariableop_resource:	?8
)dense_128_biasadd_readvariableop_resource:	?;
(dense_129_matmul_readvariableop_resource:	?7
)dense_129_biasadd_readvariableop_resource:
identity?? dense_128/BiasAdd/ReadVariableOp?dense_128/MatMul/ReadVariableOp? dense_129/BiasAdd/ReadVariableOp?dense_129/MatMul/ReadVariableOp_
dense_128/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_128/MatMul/ReadVariableOpReadVariableOp(dense_128_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_128/MatMulMatMuldense_128/Cast:y:0'dense_128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_128/BiasAdd/ReadVariableOpReadVariableOp)dense_128_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_128/BiasAddBiasAdddense_128/MatMul:product:0(dense_128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_128/ReluReludense_128/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_129/MatMul/ReadVariableOpReadVariableOp(dense_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_129/MatMulMatMuldense_128/Relu:activations:0'dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_129/BiasAdd/ReadVariableOpReadVariableOp)dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_129/BiasAddBiasAdddense_129/MatMul:product:0(dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_129/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_128/BiasAdd/ReadVariableOp ^dense_128/MatMul/ReadVariableOp!^dense_129/BiasAdd/ReadVariableOp ^dense_129/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2D
 dense_128/BiasAdd/ReadVariableOp dense_128/BiasAdd/ReadVariableOp2B
dense_128/MatMul/ReadVariableOpdense_128/MatMul/ReadVariableOp2D
 dense_129/BiasAdd/ReadVariableOp dense_129/BiasAdd/ReadVariableOp2B
dense_129/MatMul/ReadVariableOpdense_129/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830156
dense_128_input#
dense_128_830145:	?
dense_128_830147:	?#
dense_129_830150:	?
dense_129_830152:
identity??!dense_128/StatefulPartitionedCall?!dense_129/StatefulPartitionedCall^
CastCastdense_128_input*

DstT0*

SrcT0*'
_output_shapes
:??????????
!dense_128/StatefulPartitionedCallStatefulPartitionedCallCast:y:0dense_128_830145dense_128_830147*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_128_layer_call_and_return_conditional_losses_830033?
!dense_129/StatefulPartitionedCallStatefulPartitionedCall*dense_128/StatefulPartitionedCall:output:0dense_129_830150dense_129_830152*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_129_layer_call_and_return_conditional_losses_830049y
IdentityIdentity*dense_129/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_128/StatefulPartitionedCall"^dense_129/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2F
!dense_129/StatefulPartitionedCall!dense_129/StatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_128_input
?	
?
E__inference_dense_129_layer_call_and_return_conditional_losses_830049

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
2__inference_neural_network_64_layer_call_fn_830369
x
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
.__inference_sequential_64_layer_call_fn_830433

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_64_layer_call_and_return_conditional_losses_830056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830491

inputs;
(dense_128_matmul_readvariableop_resource:	?8
)dense_128_biasadd_readvariableop_resource:	?;
(dense_129_matmul_readvariableop_resource:	?7
)dense_129_biasadd_readvariableop_resource:
identity?? dense_128/BiasAdd/ReadVariableOp?dense_128/MatMul/ReadVariableOp? dense_129/BiasAdd/ReadVariableOp?dense_129/MatMul/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????a
dense_128/CastCastCast:y:0*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_128/MatMul/ReadVariableOpReadVariableOp(dense_128_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_128/MatMulMatMuldense_128/Cast:y:0'dense_128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_128/BiasAdd/ReadVariableOpReadVariableOp)dense_128_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_128/BiasAddBiasAdddense_128/MatMul:product:0(dense_128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_128/ReluReludense_128/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_129/MatMul/ReadVariableOpReadVariableOp(dense_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_129/MatMulMatMuldense_128/Relu:activations:0'dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_129/BiasAdd/ReadVariableOpReadVariableOp)dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_129/BiasAddBiasAdddense_129/MatMul:product:0(dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_129/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_128/BiasAdd/ReadVariableOp ^dense_128/MatMul/ReadVariableOp!^dense_129/BiasAdd/ReadVariableOp ^dense_129/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2D
 dense_128/BiasAdd/ReadVariableOp dense_128/BiasAdd/ReadVariableOp2B
dense_128/MatMul/ReadVariableOpdense_128/MatMul/ReadVariableOp2D
 dense_129/BiasAdd/ReadVariableOp dense_129/BiasAdd/ReadVariableOp2B
dense_129/MatMul/ReadVariableOpdense_129/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_128_layer_call_and_return_conditional_losses_830033

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0l
MatMulMatMulCast:y:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830171
dense_128_input#
dense_128_830160:	?
dense_128_830162:	?#
dense_129_830165:	?
dense_129_830167:
identity??!dense_128/StatefulPartitionedCall?!dense_129/StatefulPartitionedCall^
CastCastdense_128_input*

DstT0*

SrcT0*'
_output_shapes
:??????????
!dense_128/StatefulPartitionedCallStatefulPartitionedCallCast:y:0dense_128_830160dense_128_830162*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_128_layer_call_and_return_conditional_losses_830033?
!dense_129/StatefulPartitionedCallStatefulPartitionedCall*dense_128/StatefulPartitionedCall:output:0dense_129_830165dense_129_830167*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_129_layer_call_and_return_conditional_losses_830049y
IdentityIdentity*dense_129/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_128/StatefulPartitionedCall"^dense_129/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2F
!dense_129/StatefulPartitionedCall!dense_129/StatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_128_input
?

?
E__inference_dense_128_layer_call_and_return_conditional_losses_830567

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0l
MatMulMatMulCast:y:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_64_layer_call_fn_830472

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_64_layer_call_and_return_conditional_losses_830250o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830546

inputs;
(dense_128_matmul_readvariableop_resource:	?8
)dense_128_biasadd_readvariableop_resource:	?;
(dense_129_matmul_readvariableop_resource:	?7
)dense_129_biasadd_readvariableop_resource:
identity?? dense_128/BiasAdd/ReadVariableOp?dense_128/MatMul/ReadVariableOp? dense_129/BiasAdd/ReadVariableOp?dense_129/MatMul/ReadVariableOp_
dense_128/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_128/MatMul/ReadVariableOpReadVariableOp(dense_128_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_128/MatMulMatMuldense_128/Cast:y:0'dense_128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_128/BiasAdd/ReadVariableOpReadVariableOp)dense_128_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_128/BiasAddBiasAdddense_128/MatMul:product:0(dense_128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_128/ReluReludense_128/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_129/MatMul/ReadVariableOpReadVariableOp(dense_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_129/MatMulMatMuldense_128/Relu:activations:0'dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_129/BiasAdd/ReadVariableOpReadVariableOp)dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_129/BiasAddBiasAdddense_129/MatMul:product:0(dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_129/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_128/BiasAdd/ReadVariableOp ^dense_128/MatMul/ReadVariableOp!^dense_129/BiasAdd/ReadVariableOp ^dense_129/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2D
 dense_128/BiasAdd/ReadVariableOp dense_128/BiasAdd/ReadVariableOp2B
dense_128/MatMul/ReadVariableOpdense_128/MatMul/ReadVariableOp2D
 dense_129/BiasAdd/ReadVariableOp dense_129/BiasAdd/ReadVariableOp2B
dense_129/MatMul/ReadVariableOpdense_129/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_64_layer_call_fn_830141
dense_128_input
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_128_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_64_layer_call_and_return_conditional_losses_830117o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_128_input
?!
?
__inference__traced_save_830645
file_prefix'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop/
+savev2_dense_128_kernel_read_readvariableop-
)savev2_dense_128_bias_read_readvariableop/
+savev2_dense_129_kernel_read_readvariableop-
)savev2_dense_129_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop+savev2_dense_128_kernel_read_readvariableop)savev2_dense_128_bias_read_readvariableop+savev2_dense_129_kernel_read_readvariableop)savev2_dense_129_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	?
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

identity_1Identity_1:output:0*J
_input_shapes9
7: : : : : :	?:?:	?:: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::	

_output_shapes
: :
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
: 
?
?
$__inference_signature_wrapper_830420
input_1
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_830013o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830405
xI
6sequential_64_dense_128_matmul_readvariableop_resource:	?F
7sequential_64_dense_128_biasadd_readvariableop_resource:	?I
6sequential_64_dense_129_matmul_readvariableop_resource:	?E
7sequential_64_dense_129_biasadd_readvariableop_resource:
identity??.sequential_64/dense_128/BiasAdd/ReadVariableOp?-sequential_64/dense_128/MatMul/ReadVariableOp?.sequential_64/dense_129/BiasAdd/ReadVariableOp?-sequential_64/dense_129/MatMul/ReadVariableOph
sequential_64/dense_128/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:??????????
-sequential_64/dense_128/MatMul/ReadVariableOpReadVariableOp6sequential_64_dense_128_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_64/dense_128/MatMulMatMul sequential_64/dense_128/Cast:y:05sequential_64/dense_128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_64/dense_128/BiasAdd/ReadVariableOpReadVariableOp7sequential_64_dense_128_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_64/dense_128/BiasAddBiasAdd(sequential_64/dense_128/MatMul:product:06sequential_64/dense_128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
sequential_64/dense_128/ReluRelu(sequential_64/dense_128/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
-sequential_64/dense_129/MatMul/ReadVariableOpReadVariableOp6sequential_64_dense_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_64/dense_129/MatMulMatMul*sequential_64/dense_128/Relu:activations:05sequential_64/dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
.sequential_64/dense_129/BiasAdd/ReadVariableOpReadVariableOp7sequential_64_dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_64/dense_129/BiasAddBiasAdd(sequential_64/dense_129/MatMul:product:06sequential_64/dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????w
IdentityIdentity(sequential_64/dense_129/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^sequential_64/dense_128/BiasAdd/ReadVariableOp.^sequential_64/dense_128/MatMul/ReadVariableOp/^sequential_64/dense_129/BiasAdd/ReadVariableOp.^sequential_64/dense_129/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2`
.sequential_64/dense_128/BiasAdd/ReadVariableOp.sequential_64/dense_128/BiasAdd/ReadVariableOp2^
-sequential_64/dense_128/MatMul/ReadVariableOp-sequential_64/dense_128/MatMul/ReadVariableOp2`
.sequential_64/dense_129/BiasAdd/ReadVariableOp.sequential_64/dense_129/BiasAdd/ReadVariableOp2^
-sequential_64/dense_129/MatMul/ReadVariableOp-sequential_64/dense_129/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namex
?0
?
"__inference__traced_restore_830691
file_prefix#
assignvariableop_sgd_iter:	 &
assignvariableop_1_sgd_decay: .
$assignvariableop_2_sgd_learning_rate: )
assignvariableop_3_sgd_momentum: 6
#assignvariableop_4_dense_128_kernel:	?0
!assignvariableop_5_dense_128_bias:	?6
#assignvariableop_6_dense_129_kernel:	?/
!assignvariableop_7_dense_129_bias:"
assignvariableop_8_total: "
assignvariableop_9_count: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: 
identity_13??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_sgd_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_sgd_decayIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_sgd_learning_rateIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_momentumIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_128_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_128_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_129_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_129_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
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
?
?
!__inference__wrapped_model_830013
input_1[
Hneural_network_64_sequential_64_dense_128_matmul_readvariableop_resource:	?X
Ineural_network_64_sequential_64_dense_128_biasadd_readvariableop_resource:	?[
Hneural_network_64_sequential_64_dense_129_matmul_readvariableop_resource:	?W
Ineural_network_64_sequential_64_dense_129_biasadd_readvariableop_resource:
identity??@neural_network_64/sequential_64/dense_128/BiasAdd/ReadVariableOp??neural_network_64/sequential_64/dense_128/MatMul/ReadVariableOp?@neural_network_64/sequential_64/dense_129/BiasAdd/ReadVariableOp??neural_network_64/sequential_64/dense_129/MatMul/ReadVariableOp?
.neural_network_64/sequential_64/dense_128/CastCastinput_1*

DstT0*

SrcT0*'
_output_shapes
:??????????
?neural_network_64/sequential_64/dense_128/MatMul/ReadVariableOpReadVariableOpHneural_network_64_sequential_64_dense_128_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
0neural_network_64/sequential_64/dense_128/MatMulMatMul2neural_network_64/sequential_64/dense_128/Cast:y:0Gneural_network_64/sequential_64/dense_128/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@neural_network_64/sequential_64/dense_128/BiasAdd/ReadVariableOpReadVariableOpIneural_network_64_sequential_64_dense_128_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
1neural_network_64/sequential_64/dense_128/BiasAddBiasAdd:neural_network_64/sequential_64/dense_128/MatMul:product:0Hneural_network_64/sequential_64/dense_128/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.neural_network_64/sequential_64/dense_128/ReluRelu:neural_network_64/sequential_64/dense_128/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
?neural_network_64/sequential_64/dense_129/MatMul/ReadVariableOpReadVariableOpHneural_network_64_sequential_64_dense_129_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
0neural_network_64/sequential_64/dense_129/MatMulMatMul<neural_network_64/sequential_64/dense_128/Relu:activations:0Gneural_network_64/sequential_64/dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
@neural_network_64/sequential_64/dense_129/BiasAdd/ReadVariableOpReadVariableOpIneural_network_64_sequential_64_dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
1neural_network_64/sequential_64/dense_129/BiasAddBiasAdd:neural_network_64/sequential_64/dense_129/MatMul:product:0Hneural_network_64/sequential_64/dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
IdentityIdentity:neural_network_64/sequential_64/dense_129/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOpA^neural_network_64/sequential_64/dense_128/BiasAdd/ReadVariableOp@^neural_network_64/sequential_64/dense_128/MatMul/ReadVariableOpA^neural_network_64/sequential_64/dense_129/BiasAdd/ReadVariableOp@^neural_network_64/sequential_64/dense_129/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2?
@neural_network_64/sequential_64/dense_128/BiasAdd/ReadVariableOp@neural_network_64/sequential_64/dense_128/BiasAdd/ReadVariableOp2?
?neural_network_64/sequential_64/dense_128/MatMul/ReadVariableOp?neural_network_64/sequential_64/dense_128/MatMul/ReadVariableOp2?
@neural_network_64/sequential_64/dense_129/BiasAdd/ReadVariableOp@neural_network_64/sequential_64/dense_129/BiasAdd/ReadVariableOp2?
?neural_network_64/sequential_64/dense_129/MatMul/ReadVariableOp?neural_network_64/sequential_64/dense_129/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
*__inference_dense_128_layer_call_fn_830555

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_128_layer_call_and_return_conditional_losses_830033p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830339
input_1'
sequential_64_830329:	?#
sequential_64_830331:	?'
sequential_64_830333:	?"
sequential_64_830335:
identity??%sequential_64/StatefulPartitionedCall?
%sequential_64/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_64_830329sequential_64_830331sequential_64_830333sequential_64_830335*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_64_layer_call_and_return_conditional_losses_830250}
IdentityIdentity.sequential_64/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????n
NoOpNoOp&^sequential_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2N
%sequential_64/StatefulPartitionedCall%sequential_64/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?[
?
sequence
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature


signatures"
_tf_keras_model
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
I
iter
	decay
learning_rate
momentum"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_neural_network_64_layer_call_fn_830217
2__inference_neural_network_64_layer_call_fn_830356
2__inference_neural_network_64_layer_call_fn_830369
2__inference_neural_network_64_layer_call_fn_830313?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830387
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830405
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830326
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830339?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
!__inference__wrapped_model_830013input_1"?
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
,
 serving_default"
signature_map
?

kernel
bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_sequential_64_layer_call_fn_830067
.__inference_sequential_64_layer_call_fn_830433
.__inference_sequential_64_layer_call_fn_830446
.__inference_sequential_64_layer_call_fn_830141
.__inference_sequential_64_layer_call_fn_830459
.__inference_sequential_64_layer_call_fn_830472?
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
?2?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830491
I__inference_sequential_64_layer_call_and_return_conditional_losses_830510
I__inference_sequential_64_layer_call_and_return_conditional_losses_830156
I__inference_sequential_64_layer_call_and_return_conditional_losses_830171
I__inference_sequential_64_layer_call_and_return_conditional_losses_830528
I__inference_sequential_64_layer_call_and_return_conditional_losses_830546?
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
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
#:!	?2dense_128/kernel
:?2dense_128/bias
#:!	?2dense_129/kernel
:2dense_129/bias
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_830420input_1"?
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
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_128_layer_call_fn_830555?
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
E__inference_dense_128_layer_call_and_return_conditional_losses_830567?
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
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_129_layer_call_fn_830576?
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
E__inference_dense_129_layer_call_and_return_conditional_losses_830586?
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
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	>total
	?count
@	variables
A	keras_api"
_tf_keras_metric
^
	Btotal
	Ccount
D
_fn_kwargs
E	variables
F	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
>0
?1"
trackable_list_wrapper
-
@	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
B0
C1"
trackable_list_wrapper
-
E	variables"
_generic_user_object?
!__inference__wrapped_model_830013m0?-
&?#
!?
input_1?????????
? "3?0
.
output_1"?
output_1??????????
E__inference_dense_128_layer_call_and_return_conditional_losses_830567]/?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????
? ~
*__inference_dense_128_layer_call_fn_830555P/?,
%?"
 ?
inputs?????????
? "????????????
E__inference_dense_129_layer_call_and_return_conditional_losses_830586]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_129_layer_call_fn_830576P0?-
&?#
!?
inputs??????????
? "???????????
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830326c4?1
*?'
!?
input_1?????????
p 
? "%?"
?
0?????????
? ?
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830339c4?1
*?'
!?
input_1?????????
p
? "%?"
?
0?????????
? ?
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830387].?+
$?!
?
x?????????
p 
? "%?"
?
0?????????
? ?
M__inference_neural_network_64_layer_call_and_return_conditional_losses_830405].?+
$?!
?
x?????????
p
? "%?"
?
0?????????
? ?
2__inference_neural_network_64_layer_call_fn_830217V4?1
*?'
!?
input_1?????????
p 
? "???????????
2__inference_neural_network_64_layer_call_fn_830313V4?1
*?'
!?
input_1?????????
p
? "???????????
2__inference_neural_network_64_layer_call_fn_830356P.?+
$?!
?
x?????????
p 
? "???????????
2__inference_neural_network_64_layer_call_fn_830369P.?+
$?!
?
x?????????
p
? "???????????
I__inference_sequential_64_layer_call_and_return_conditional_losses_830156o@?=
6?3
)?&
dense_128_input?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830171o@?=
6?3
)?&
dense_128_input?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830491f7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830510f7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830528f7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_64_layer_call_and_return_conditional_losses_830546f7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_64_layer_call_fn_830067b@?=
6?3
)?&
dense_128_input?????????
p 

 
? "???????????
.__inference_sequential_64_layer_call_fn_830141b@?=
6?3
)?&
dense_128_input?????????
p

 
? "???????????
.__inference_sequential_64_layer_call_fn_830433Y7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
.__inference_sequential_64_layer_call_fn_830446Y7?4
-?*
 ?
inputs?????????
p

 
? "???????????
.__inference_sequential_64_layer_call_fn_830459Y7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
.__inference_sequential_64_layer_call_fn_830472Y7?4
-?*
 ?
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_830420x;?8
? 
1?.
,
input_1!?
input_1?????????"3?0
.
output_1"?
output_1?????????