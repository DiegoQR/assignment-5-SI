??
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
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
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
dense_495/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_495/kernel
v
$dense_495/kernel/Read/ReadVariableOpReadVariableOpdense_495/kernel*
_output_shapes
:	?*
dtype0
u
dense_495/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_495/bias
n
"dense_495/bias/Read/ReadVariableOpReadVariableOpdense_495/bias*
_output_shapes	
:?*
dtype0
~
dense_496/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_496/kernel
w
$dense_496/kernel/Read/ReadVariableOpReadVariableOpdense_496/kernel* 
_output_shapes
:
??*
dtype0
u
dense_496/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_496/bias
n
"dense_496/bias/Read/ReadVariableOpReadVariableOpdense_496/bias*
_output_shapes	
:?*
dtype0
}
dense_497/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_497/kernel
v
$dense_497/kernel/Read/ReadVariableOpReadVariableOpdense_497/kernel*
_output_shapes
:	?*
dtype0
t
dense_497/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_497/bias
m
"dense_497/bias/Read/ReadVariableOpReadVariableOpdense_497/bias*
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
?#
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?"
value?"B?" B?"
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
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
:
iter
	decay
learning_rate
momentum*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
?
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
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
#serving_default* 
?

kernel
bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
?

kernel
bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses*
?

kernel
bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
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
VARIABLE_VALUEdense_495/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_495/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_496/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_496/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_497/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_497/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*

;0
<1*
* 
* 
* 

0
1*

0
1*
* 
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 
?
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*
* 
* 
* 

0
1
2*
* 
* 
* 
8
	Ltotal
	Mcount
N	variables
O	keras_api*
H
	Ptotal
	Qcount
R
_fn_kwargs
S	variables
T	keras_api*
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
L0
M1*

N	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

P0
Q1*

S	variables*
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense_495/kerneldense_495/biasdense_496/kerneldense_496/biasdense_497/kerneldense_497/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_729153
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp$dense_495/kernel/Read/ReadVariableOp"dense_495/bias/Read/ReadVariableOp$dense_496/kernel/Read/ReadVariableOp"dense_496/bias/Read/ReadVariableOp$dense_497/kernel/Read/ReadVariableOp"dense_497/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
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
__inference__traced_save_729448
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameSGD/iter	SGD/decaySGD/learning_rateSGD/momentumdense_495/kerneldense_495/biasdense_496/kerneldense_496/biasdense_497/kerneldense_497/biastotalcounttotal_1count_1*
Tin
2*
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
"__inference__traced_restore_729500ߴ
?	
?
4__inference_neural_network_3_56_layer_call_fn_728885
input_1
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_728870o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
J__inference_sequential_158_layer_call_and_return_conditional_losses_728804
dense_495_input#
dense_495_728788:	?
dense_495_728790:	?$
dense_496_728793:
??
dense_496_728795:	?#
dense_497_728798:	?
dense_497_728800:
identity??!dense_495/StatefulPartitionedCall?!dense_496/StatefulPartitionedCall?!dense_497/StatefulPartitionedCall^
CastCastdense_495_input*

DstT0*

SrcT0*'
_output_shapes
:??????????
!dense_495/StatefulPartitionedCallStatefulPartitionedCallCast:y:0dense_495_728788dense_495_728790*
Tin
2*
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
GPU 2J 8? *N
fIRG
E__inference_dense_495_layer_call_and_return_conditional_losses_728628?
!dense_496/StatefulPartitionedCallStatefulPartitionedCall*dense_495/StatefulPartitionedCall:output:0dense_496_728793dense_496_728795*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_496_layer_call_and_return_conditional_losses_728645?
!dense_497/StatefulPartitionedCallStatefulPartitionedCall*dense_496/StatefulPartitionedCall:output:0dense_497_728798dense_497_728800*
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
E__inference_dense_497_layer_call_and_return_conditional_losses_728661y
IdentityIdentity*dense_497/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_495/StatefulPartitionedCall"^dense_496/StatefulPartitionedCall"^dense_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_495/StatefulPartitionedCall!dense_495/StatefulPartitionedCall2F
!dense_496/StatefulPartitionedCall!dense_496/StatefulPartitionedCall2F
!dense_497/StatefulPartitionedCall!dense_497/StatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_495_input
?	
?
4__inference_neural_network_3_56_layer_call_fn_729012
input_1
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_728980o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
J__inference_sequential_158_layer_call_and_return_conditional_losses_728855

inputs;
(dense_495_matmul_readvariableop_resource:	?8
)dense_495_biasadd_readvariableop_resource:	?<
(dense_496_matmul_readvariableop_resource:
??8
)dense_496_biasadd_readvariableop_resource:	?;
(dense_497_matmul_readvariableop_resource:	?7
)dense_497_biasadd_readvariableop_resource:
identity?? dense_495/BiasAdd/ReadVariableOp?dense_495/MatMul/ReadVariableOp? dense_496/BiasAdd/ReadVariableOp?dense_496/MatMul/ReadVariableOp? dense_497/BiasAdd/ReadVariableOp?dense_497/MatMul/ReadVariableOp_
dense_495/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_495/MatMul/ReadVariableOpReadVariableOp(dense_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_495/MatMulMatMuldense_495/Cast:y:0'dense_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_495/BiasAdd/ReadVariableOpReadVariableOp)dense_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_495/BiasAddBiasAdddense_495/MatMul:product:0(dense_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_495/ReluReludense_495/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_496/MatMul/ReadVariableOpReadVariableOp(dense_496_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_496/MatMulMatMuldense_495/Relu:activations:0'dense_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_496/BiasAdd/ReadVariableOpReadVariableOp)dense_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_496/BiasAddBiasAdddense_496/MatMul:product:0(dense_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_496/ReluReludense_496/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_497/MatMul/ReadVariableOpReadVariableOp(dense_497_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_497/MatMulMatMuldense_496/Relu:activations:0'dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_497/BiasAdd/ReadVariableOpReadVariableOp)dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_497/BiasAddBiasAdddense_497/MatMul:product:0(dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_497/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_495/BiasAdd/ReadVariableOp ^dense_495/MatMul/ReadVariableOp!^dense_496/BiasAdd/ReadVariableOp ^dense_496/MatMul/ReadVariableOp!^dense_497/BiasAdd/ReadVariableOp ^dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_495/BiasAdd/ReadVariableOp dense_495/BiasAdd/ReadVariableOp2B
dense_495/MatMul/ReadVariableOpdense_495/MatMul/ReadVariableOp2D
 dense_496/BiasAdd/ReadVariableOp dense_496/BiasAdd/ReadVariableOp2B
dense_496/MatMul/ReadVariableOpdense_496/MatMul/ReadVariableOp2D
 dense_497/BiasAdd/ReadVariableOp dense_497/BiasAdd/ReadVariableOp2B
dense_497/MatMul/ReadVariableOpdense_497/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_158_layer_call_and_return_conditional_losses_728929

inputs;
(dense_495_matmul_readvariableop_resource:	?8
)dense_495_biasadd_readvariableop_resource:	?<
(dense_496_matmul_readvariableop_resource:
??8
)dense_496_biasadd_readvariableop_resource:	?;
(dense_497_matmul_readvariableop_resource:	?7
)dense_497_biasadd_readvariableop_resource:
identity?? dense_495/BiasAdd/ReadVariableOp?dense_495/MatMul/ReadVariableOp? dense_496/BiasAdd/ReadVariableOp?dense_496/MatMul/ReadVariableOp? dense_497/BiasAdd/ReadVariableOp?dense_497/MatMul/ReadVariableOp_
dense_495/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_495/MatMul/ReadVariableOpReadVariableOp(dense_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_495/MatMulMatMuldense_495/Cast:y:0'dense_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_495/BiasAdd/ReadVariableOpReadVariableOp)dense_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_495/BiasAddBiasAdddense_495/MatMul:product:0(dense_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_495/ReluReludense_495/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_496/MatMul/ReadVariableOpReadVariableOp(dense_496_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_496/MatMulMatMuldense_495/Relu:activations:0'dense_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_496/BiasAdd/ReadVariableOpReadVariableOp)dense_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_496/BiasAddBiasAdddense_496/MatMul:product:0(dense_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_496/ReluReludense_496/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_497/MatMul/ReadVariableOpReadVariableOp(dense_497_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_497/MatMulMatMuldense_496/Relu:activations:0'dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_497/BiasAdd/ReadVariableOpReadVariableOp)dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_497/BiasAddBiasAdddense_497/MatMul:product:0(dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_497/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_495/BiasAdd/ReadVariableOp ^dense_495/MatMul/ReadVariableOp!^dense_496/BiasAdd/ReadVariableOp ^dense_496/MatMul/ReadVariableOp!^dense_497/BiasAdd/ReadVariableOp ^dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_495/BiasAdd/ReadVariableOp dense_495/BiasAdd/ReadVariableOp2B
dense_495/MatMul/ReadVariableOpdense_495/MatMul/ReadVariableOp2D
 dense_496/BiasAdd/ReadVariableOp dense_496/BiasAdd/ReadVariableOp2B
dense_496/MatMul/ReadVariableOpdense_496/MatMul/ReadVariableOp2D
 dense_497/BiasAdd/ReadVariableOp dense_497/BiasAdd/ReadVariableOp2B
dense_497/MatMul/ReadVariableOpdense_497/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_158_layer_call_fn_729170

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_158_layer_call_and_return_conditional_losses_728668o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_158_layer_call_and_return_conditional_losses_728752

inputs#
dense_495_728736:	?
dense_495_728738:	?$
dense_496_728741:
??
dense_496_728743:	?#
dense_497_728746:	?
dense_497_728748:
identity??!dense_495/StatefulPartitionedCall?!dense_496/StatefulPartitionedCall?!dense_497/StatefulPartitionedCallU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
!dense_495/StatefulPartitionedCallStatefulPartitionedCallCast:y:0dense_495_728736dense_495_728738*
Tin
2*
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
GPU 2J 8? *N
fIRG
E__inference_dense_495_layer_call_and_return_conditional_losses_728628?
!dense_496/StatefulPartitionedCallStatefulPartitionedCall*dense_495/StatefulPartitionedCall:output:0dense_496_728741dense_496_728743*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_496_layer_call_and_return_conditional_losses_728645?
!dense_497/StatefulPartitionedCallStatefulPartitionedCall*dense_496/StatefulPartitionedCall:output:0dense_497_728746dense_497_728748*
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
E__inference_dense_497_layer_call_and_return_conditional_losses_728661y
IdentityIdentity*dense_497/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_495/StatefulPartitionedCall"^dense_496/StatefulPartitionedCall"^dense_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_495/StatefulPartitionedCall!dense_495/StatefulPartitionedCall2F
!dense_496/StatefulPartitionedCall!dense_496/StatefulPartitionedCall2F
!dense_497/StatefulPartitionedCall!dense_497/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_158_layer_call_and_return_conditional_losses_729273

inputs;
(dense_495_matmul_readvariableop_resource:	?8
)dense_495_biasadd_readvariableop_resource:	?<
(dense_496_matmul_readvariableop_resource:
??8
)dense_496_biasadd_readvariableop_resource:	?;
(dense_497_matmul_readvariableop_resource:	?7
)dense_497_biasadd_readvariableop_resource:
identity?? dense_495/BiasAdd/ReadVariableOp?dense_495/MatMul/ReadVariableOp? dense_496/BiasAdd/ReadVariableOp?dense_496/MatMul/ReadVariableOp? dense_497/BiasAdd/ReadVariableOp?dense_497/MatMul/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????a
dense_495/CastCastCast:y:0*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_495/MatMul/ReadVariableOpReadVariableOp(dense_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_495/MatMulMatMuldense_495/Cast:y:0'dense_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_495/BiasAdd/ReadVariableOpReadVariableOp)dense_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_495/BiasAddBiasAdddense_495/MatMul:product:0(dense_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_495/ReluReludense_495/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_496/MatMul/ReadVariableOpReadVariableOp(dense_496_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_496/MatMulMatMuldense_495/Relu:activations:0'dense_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_496/BiasAdd/ReadVariableOpReadVariableOp)dense_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_496/BiasAddBiasAdddense_496/MatMul:product:0(dense_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_496/ReluReludense_496/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_497/MatMul/ReadVariableOpReadVariableOp(dense_497_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_497/MatMulMatMuldense_496/Relu:activations:0'dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_497/BiasAdd/ReadVariableOpReadVariableOp)dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_497/BiasAddBiasAdddense_497/MatMul:product:0(dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_497/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_495/BiasAdd/ReadVariableOp ^dense_495/MatMul/ReadVariableOp!^dense_496/BiasAdd/ReadVariableOp ^dense_496/MatMul/ReadVariableOp!^dense_497/BiasAdd/ReadVariableOp ^dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_495/BiasAdd/ReadVariableOp dense_495/BiasAdd/ReadVariableOp2B
dense_495/MatMul/ReadVariableOpdense_495/MatMul/ReadVariableOp2D
 dense_496/BiasAdd/ReadVariableOp dense_496/BiasAdd/ReadVariableOp2B
dense_496/MatMul/ReadVariableOpdense_496/MatMul/ReadVariableOp2D
 dense_497/BiasAdd/ReadVariableOp dense_497/BiasAdd/ReadVariableOp2B
dense_497/MatMul/ReadVariableOpdense_497/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_496_layer_call_and_return_conditional_losses_728645

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_497_layer_call_and_return_conditional_losses_728661

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_158_layer_call_and_return_conditional_losses_729298

inputs;
(dense_495_matmul_readvariableop_resource:	?8
)dense_495_biasadd_readvariableop_resource:	?<
(dense_496_matmul_readvariableop_resource:
??8
)dense_496_biasadd_readvariableop_resource:	?;
(dense_497_matmul_readvariableop_resource:	?7
)dense_497_biasadd_readvariableop_resource:
identity?? dense_495/BiasAdd/ReadVariableOp?dense_495/MatMul/ReadVariableOp? dense_496/BiasAdd/ReadVariableOp?dense_496/MatMul/ReadVariableOp? dense_497/BiasAdd/ReadVariableOp?dense_497/MatMul/ReadVariableOp_
dense_495/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_495/MatMul/ReadVariableOpReadVariableOp(dense_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_495/MatMulMatMuldense_495/Cast:y:0'dense_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_495/BiasAdd/ReadVariableOpReadVariableOp)dense_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_495/BiasAddBiasAdddense_495/MatMul:product:0(dense_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_495/ReluReludense_495/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_496/MatMul/ReadVariableOpReadVariableOp(dense_496_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_496/MatMulMatMuldense_495/Relu:activations:0'dense_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_496/BiasAdd/ReadVariableOpReadVariableOp)dense_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_496/BiasAddBiasAdddense_496/MatMul:product:0(dense_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_496/ReluReludense_496/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_497/MatMul/ReadVariableOpReadVariableOp(dense_497_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_497/MatMulMatMuldense_496/Relu:activations:0'dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_497/BiasAdd/ReadVariableOpReadVariableOp)dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_497/BiasAddBiasAdddense_497/MatMul:product:0(dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_497/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_495/BiasAdd/ReadVariableOp ^dense_495/MatMul/ReadVariableOp!^dense_496/BiasAdd/ReadVariableOp ^dense_496/MatMul/ReadVariableOp!^dense_497/BiasAdd/ReadVariableOp ^dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_495/BiasAdd/ReadVariableOp dense_495/BiasAdd/ReadVariableOp2B
dense_495/MatMul/ReadVariableOpdense_495/MatMul/ReadVariableOp2D
 dense_496/BiasAdd/ReadVariableOp dense_496/BiasAdd/ReadVariableOp2B
dense_496/MatMul/ReadVariableOpdense_496/MatMul/ReadVariableOp2D
 dense_497/BiasAdd/ReadVariableOp dense_497/BiasAdd/ReadVariableOp2B
dense_497/MatMul/ReadVariableOpdense_497/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729109
xJ
7sequential_158_dense_495_matmul_readvariableop_resource:	?G
8sequential_158_dense_495_biasadd_readvariableop_resource:	?K
7sequential_158_dense_496_matmul_readvariableop_resource:
??G
8sequential_158_dense_496_biasadd_readvariableop_resource:	?J
7sequential_158_dense_497_matmul_readvariableop_resource:	?F
8sequential_158_dense_497_biasadd_readvariableop_resource:
identity??/sequential_158/dense_495/BiasAdd/ReadVariableOp?.sequential_158/dense_495/MatMul/ReadVariableOp?/sequential_158/dense_496/BiasAdd/ReadVariableOp?.sequential_158/dense_496/MatMul/ReadVariableOp?/sequential_158/dense_497/BiasAdd/ReadVariableOp?.sequential_158/dense_497/MatMul/ReadVariableOpi
sequential_158/dense_495/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:??????????
.sequential_158/dense_495/MatMul/ReadVariableOpReadVariableOp7sequential_158_dense_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_158/dense_495/MatMulMatMul!sequential_158/dense_495/Cast:y:06sequential_158/dense_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_158/dense_495/BiasAdd/ReadVariableOpReadVariableOp8sequential_158_dense_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 sequential_158/dense_495/BiasAddBiasAdd)sequential_158/dense_495/MatMul:product:07sequential_158/dense_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
sequential_158/dense_495/ReluRelu)sequential_158/dense_495/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
.sequential_158/dense_496/MatMul/ReadVariableOpReadVariableOp7sequential_158_dense_496_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_158/dense_496/MatMulMatMul+sequential_158/dense_495/Relu:activations:06sequential_158/dense_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_158/dense_496/BiasAdd/ReadVariableOpReadVariableOp8sequential_158_dense_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 sequential_158/dense_496/BiasAddBiasAdd)sequential_158/dense_496/MatMul:product:07sequential_158/dense_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
sequential_158/dense_496/ReluRelu)sequential_158/dense_496/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
.sequential_158/dense_497/MatMul/ReadVariableOpReadVariableOp7sequential_158_dense_497_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_158/dense_497/MatMulMatMul+sequential_158/dense_496/Relu:activations:06sequential_158/dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_158/dense_497/BiasAdd/ReadVariableOpReadVariableOp8sequential_158_dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_158/dense_497/BiasAddBiasAdd)sequential_158/dense_497/MatMul:product:07sequential_158/dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_158/dense_497/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_158/dense_495/BiasAdd/ReadVariableOp/^sequential_158/dense_495/MatMul/ReadVariableOp0^sequential_158/dense_496/BiasAdd/ReadVariableOp/^sequential_158/dense_496/MatMul/ReadVariableOp0^sequential_158/dense_497/BiasAdd/ReadVariableOp/^sequential_158/dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2b
/sequential_158/dense_495/BiasAdd/ReadVariableOp/sequential_158/dense_495/BiasAdd/ReadVariableOp2`
.sequential_158/dense_495/MatMul/ReadVariableOp.sequential_158/dense_495/MatMul/ReadVariableOp2b
/sequential_158/dense_496/BiasAdd/ReadVariableOp/sequential_158/dense_496/BiasAdd/ReadVariableOp2`
.sequential_158/dense_496/MatMul/ReadVariableOp.sequential_158/dense_496/MatMul/ReadVariableOp2b
/sequential_158/dense_497/BiasAdd/ReadVariableOp/sequential_158/dense_497/BiasAdd/ReadVariableOp2`
.sequential_158/dense_497/MatMul/ReadVariableOp.sequential_158/dense_497/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namex
?
?
/__inference_sequential_158_layer_call_fn_729204

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_158_layer_call_and_return_conditional_losses_728855o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_496_layer_call_and_return_conditional_losses_729364

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_158_layer_call_and_return_conditional_losses_728824
dense_495_input#
dense_495_728808:	?
dense_495_728810:	?$
dense_496_728813:
??
dense_496_728815:	?#
dense_497_728818:	?
dense_497_728820:
identity??!dense_495/StatefulPartitionedCall?!dense_496/StatefulPartitionedCall?!dense_497/StatefulPartitionedCall^
CastCastdense_495_input*

DstT0*

SrcT0*'
_output_shapes
:??????????
!dense_495/StatefulPartitionedCallStatefulPartitionedCallCast:y:0dense_495_728808dense_495_728810*
Tin
2*
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
GPU 2J 8? *N
fIRG
E__inference_dense_495_layer_call_and_return_conditional_losses_728628?
!dense_496/StatefulPartitionedCallStatefulPartitionedCall*dense_495/StatefulPartitionedCall:output:0dense_496_728813dense_496_728815*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_496_layer_call_and_return_conditional_losses_728645?
!dense_497/StatefulPartitionedCallStatefulPartitionedCall*dense_496/StatefulPartitionedCall:output:0dense_497_728818dense_497_728820*
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
E__inference_dense_497_layer_call_and_return_conditional_losses_728661y
IdentityIdentity*dense_497/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_495/StatefulPartitionedCall"^dense_496/StatefulPartitionedCall"^dense_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_495/StatefulPartitionedCall!dense_495/StatefulPartitionedCall2F
!dense_496/StatefulPartitionedCall!dense_496/StatefulPartitionedCall2F
!dense_497/StatefulPartitionedCall!dense_497/StatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_495_input
?.
?
!__inference__wrapped_model_728608
input_1^
Kneural_network_3_56_sequential_158_dense_495_matmul_readvariableop_resource:	?[
Lneural_network_3_56_sequential_158_dense_495_biasadd_readvariableop_resource:	?_
Kneural_network_3_56_sequential_158_dense_496_matmul_readvariableop_resource:
??[
Lneural_network_3_56_sequential_158_dense_496_biasadd_readvariableop_resource:	?^
Kneural_network_3_56_sequential_158_dense_497_matmul_readvariableop_resource:	?Z
Lneural_network_3_56_sequential_158_dense_497_biasadd_readvariableop_resource:
identity??Cneural_network_3_56/sequential_158/dense_495/BiasAdd/ReadVariableOp?Bneural_network_3_56/sequential_158/dense_495/MatMul/ReadVariableOp?Cneural_network_3_56/sequential_158/dense_496/BiasAdd/ReadVariableOp?Bneural_network_3_56/sequential_158/dense_496/MatMul/ReadVariableOp?Cneural_network_3_56/sequential_158/dense_497/BiasAdd/ReadVariableOp?Bneural_network_3_56/sequential_158/dense_497/MatMul/ReadVariableOp?
1neural_network_3_56/sequential_158/dense_495/CastCastinput_1*

DstT0*

SrcT0*'
_output_shapes
:??????????
Bneural_network_3_56/sequential_158/dense_495/MatMul/ReadVariableOpReadVariableOpKneural_network_3_56_sequential_158_dense_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
3neural_network_3_56/sequential_158/dense_495/MatMulMatMul5neural_network_3_56/sequential_158/dense_495/Cast:y:0Jneural_network_3_56/sequential_158/dense_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Cneural_network_3_56/sequential_158/dense_495/BiasAdd/ReadVariableOpReadVariableOpLneural_network_3_56_sequential_158_dense_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
4neural_network_3_56/sequential_158/dense_495/BiasAddBiasAdd=neural_network_3_56/sequential_158/dense_495/MatMul:product:0Kneural_network_3_56/sequential_158/dense_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
1neural_network_3_56/sequential_158/dense_495/ReluRelu=neural_network_3_56/sequential_158/dense_495/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
Bneural_network_3_56/sequential_158/dense_496/MatMul/ReadVariableOpReadVariableOpKneural_network_3_56_sequential_158_dense_496_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
3neural_network_3_56/sequential_158/dense_496/MatMulMatMul?neural_network_3_56/sequential_158/dense_495/Relu:activations:0Jneural_network_3_56/sequential_158/dense_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Cneural_network_3_56/sequential_158/dense_496/BiasAdd/ReadVariableOpReadVariableOpLneural_network_3_56_sequential_158_dense_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
4neural_network_3_56/sequential_158/dense_496/BiasAddBiasAdd=neural_network_3_56/sequential_158/dense_496/MatMul:product:0Kneural_network_3_56/sequential_158/dense_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
1neural_network_3_56/sequential_158/dense_496/ReluRelu=neural_network_3_56/sequential_158/dense_496/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
Bneural_network_3_56/sequential_158/dense_497/MatMul/ReadVariableOpReadVariableOpKneural_network_3_56_sequential_158_dense_497_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
3neural_network_3_56/sequential_158/dense_497/MatMulMatMul?neural_network_3_56/sequential_158/dense_496/Relu:activations:0Jneural_network_3_56/sequential_158/dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Cneural_network_3_56/sequential_158/dense_497/BiasAdd/ReadVariableOpReadVariableOpLneural_network_3_56_sequential_158_dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
4neural_network_3_56/sequential_158/dense_497/BiasAddBiasAdd=neural_network_3_56/sequential_158/dense_497/MatMul:product:0Kneural_network_3_56/sequential_158/dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
IdentityIdentity=neural_network_3_56/sequential_158/dense_497/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOpD^neural_network_3_56/sequential_158/dense_495/BiasAdd/ReadVariableOpC^neural_network_3_56/sequential_158/dense_495/MatMul/ReadVariableOpD^neural_network_3_56/sequential_158/dense_496/BiasAdd/ReadVariableOpC^neural_network_3_56/sequential_158/dense_496/MatMul/ReadVariableOpD^neural_network_3_56/sequential_158/dense_497/BiasAdd/ReadVariableOpC^neural_network_3_56/sequential_158/dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2?
Cneural_network_3_56/sequential_158/dense_495/BiasAdd/ReadVariableOpCneural_network_3_56/sequential_158/dense_495/BiasAdd/ReadVariableOp2?
Bneural_network_3_56/sequential_158/dense_495/MatMul/ReadVariableOpBneural_network_3_56/sequential_158/dense_495/MatMul/ReadVariableOp2?
Cneural_network_3_56/sequential_158/dense_496/BiasAdd/ReadVariableOpCneural_network_3_56/sequential_158/dense_496/BiasAdd/ReadVariableOp2?
Bneural_network_3_56/sequential_158/dense_496/MatMul/ReadVariableOpBneural_network_3_56/sequential_158/dense_496/MatMul/ReadVariableOp2?
Cneural_network_3_56/sequential_158/dense_497/BiasAdd/ReadVariableOpCneural_network_3_56/sequential_158/dense_497/BiasAdd/ReadVariableOp2?
Bneural_network_3_56/sequential_158/dense_497/MatMul/ReadVariableOpBneural_network_3_56/sequential_158/dense_497/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
4__inference_neural_network_3_56_layer_call_fn_729084
x
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_728980o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?

?
E__inference_dense_495_layer_call_and_return_conditional_losses_729344

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0l
MatMulMatMulCast:y:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
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
?
?
*__inference_dense_495_layer_call_fn_729332

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
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
GPU 2J 8? *N
fIRG
E__inference_dense_495_layer_call_and_return_conditional_losses_728628p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
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
?
?
$__inference_signature_wrapper_729153
input_1
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_728608o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?#
?
__inference__traced_save_729448
file_prefix'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop/
+savev2_dense_495_kernel_read_readvariableop-
)savev2_dense_495_bias_read_readvariableop/
+savev2_dense_496_kernel_read_readvariableop-
)savev2_dense_496_bias_read_readvariableop/
+savev2_dense_497_kernel_read_readvariableop-
)savev2_dense_497_bias_read_readvariableop$
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop+savev2_dense_495_kernel_read_readvariableop)savev2_dense_495_bias_read_readvariableop+savev2_dense_496_kernel_read_readvariableop)savev2_dense_496_bias_read_readvariableop+savev2_dense_497_kernel_read_readvariableop)savev2_dense_497_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	?
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

identity_1Identity_1:output:0*]
_input_shapesL
J: : : : : :	?:?:
??:?:	?:: : : : : 2(
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
:	?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%	!

_output_shapes
:	?: 


_output_shapes
::
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
: 
?
?
*__inference_dense_496_layer_call_fn_729353

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_496_layer_call_and_return_conditional_losses_728645p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_dense_495_layer_call_and_return_conditional_losses_728628

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0l
MatMulMatMulCast:y:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
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
?
/__inference_sequential_158_layer_call_fn_729221

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_158_layer_call_and_return_conditional_losses_728929o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_158_layer_call_and_return_conditional_losses_729247

inputs;
(dense_495_matmul_readvariableop_resource:	?8
)dense_495_biasadd_readvariableop_resource:	?<
(dense_496_matmul_readvariableop_resource:
??8
)dense_496_biasadd_readvariableop_resource:	?;
(dense_497_matmul_readvariableop_resource:	?7
)dense_497_biasadd_readvariableop_resource:
identity?? dense_495/BiasAdd/ReadVariableOp?dense_495/MatMul/ReadVariableOp? dense_496/BiasAdd/ReadVariableOp?dense_496/MatMul/ReadVariableOp? dense_497/BiasAdd/ReadVariableOp?dense_497/MatMul/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????a
dense_495/CastCastCast:y:0*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_495/MatMul/ReadVariableOpReadVariableOp(dense_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_495/MatMulMatMuldense_495/Cast:y:0'dense_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_495/BiasAdd/ReadVariableOpReadVariableOp)dense_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_495/BiasAddBiasAdddense_495/MatMul:product:0(dense_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_495/ReluReludense_495/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_496/MatMul/ReadVariableOpReadVariableOp(dense_496_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_496/MatMulMatMuldense_495/Relu:activations:0'dense_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_496/BiasAdd/ReadVariableOpReadVariableOp)dense_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_496/BiasAddBiasAdddense_496/MatMul:product:0(dense_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_496/ReluReludense_496/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_497/MatMul/ReadVariableOpReadVariableOp(dense_497_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_497/MatMulMatMuldense_496/Relu:activations:0'dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_497/BiasAdd/ReadVariableOpReadVariableOp)dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_497/BiasAddBiasAdddense_497/MatMul:product:0(dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_497/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_495/BiasAdd/ReadVariableOp ^dense_495/MatMul/ReadVariableOp!^dense_496/BiasAdd/ReadVariableOp ^dense_496/MatMul/ReadVariableOp!^dense_497/BiasAdd/ReadVariableOp ^dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_495/BiasAdd/ReadVariableOp dense_495/BiasAdd/ReadVariableOp2B
dense_495/MatMul/ReadVariableOpdense_495/MatMul/ReadVariableOp2D
 dense_496/BiasAdd/ReadVariableOp dense_496/BiasAdd/ReadVariableOp2B
dense_496/MatMul/ReadVariableOpdense_496/MatMul/ReadVariableOp2D
 dense_497/BiasAdd/ReadVariableOp dense_497/BiasAdd/ReadVariableOp2B
dense_497/MatMul/ReadVariableOpdense_497/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729029
input_1(
sequential_158_729015:	?$
sequential_158_729017:	?)
sequential_158_729019:
??$
sequential_158_729021:	?(
sequential_158_729023:	?#
sequential_158_729025:
identity??&sequential_158/StatefulPartitionedCall?
&sequential_158/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_158_729015sequential_158_729017sequential_158_729019sequential_158_729021sequential_158_729023sequential_158_729025*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_158_layer_call_and_return_conditional_losses_728855~
IdentityIdentity/sequential_158/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????o
NoOpNoOp'^sequential_158/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2P
&sequential_158/StatefulPartitionedCall&sequential_158/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
J__inference_sequential_158_layer_call_and_return_conditional_losses_728668

inputs#
dense_495_728629:	?
dense_495_728631:	?$
dense_496_728646:
??
dense_496_728648:	?#
dense_497_728662:	?
dense_497_728664:
identity??!dense_495/StatefulPartitionedCall?!dense_496/StatefulPartitionedCall?!dense_497/StatefulPartitionedCallU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
!dense_495/StatefulPartitionedCallStatefulPartitionedCallCast:y:0dense_495_728629dense_495_728631*
Tin
2*
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
GPU 2J 8? *N
fIRG
E__inference_dense_495_layer_call_and_return_conditional_losses_728628?
!dense_496/StatefulPartitionedCallStatefulPartitionedCall*dense_495/StatefulPartitionedCall:output:0dense_496_728646dense_496_728648*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_496_layer_call_and_return_conditional_losses_728645?
!dense_497/StatefulPartitionedCallStatefulPartitionedCall*dense_496/StatefulPartitionedCall:output:0dense_497_728662dense_497_728664*
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
E__inference_dense_497_layer_call_and_return_conditional_losses_728661y
IdentityIdentity*dense_497/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_495/StatefulPartitionedCall"^dense_496/StatefulPartitionedCall"^dense_497/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_495/StatefulPartitionedCall!dense_495/StatefulPartitionedCall2F
!dense_496/StatefulPartitionedCall!dense_496/StatefulPartitionedCall2F
!dense_497/StatefulPartitionedCall!dense_497/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_497_layer_call_and_return_conditional_losses_729383

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729134
xJ
7sequential_158_dense_495_matmul_readvariableop_resource:	?G
8sequential_158_dense_495_biasadd_readvariableop_resource:	?K
7sequential_158_dense_496_matmul_readvariableop_resource:
??G
8sequential_158_dense_496_biasadd_readvariableop_resource:	?J
7sequential_158_dense_497_matmul_readvariableop_resource:	?F
8sequential_158_dense_497_biasadd_readvariableop_resource:
identity??/sequential_158/dense_495/BiasAdd/ReadVariableOp?.sequential_158/dense_495/MatMul/ReadVariableOp?/sequential_158/dense_496/BiasAdd/ReadVariableOp?.sequential_158/dense_496/MatMul/ReadVariableOp?/sequential_158/dense_497/BiasAdd/ReadVariableOp?.sequential_158/dense_497/MatMul/ReadVariableOpi
sequential_158/dense_495/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:??????????
.sequential_158/dense_495/MatMul/ReadVariableOpReadVariableOp7sequential_158_dense_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_158/dense_495/MatMulMatMul!sequential_158/dense_495/Cast:y:06sequential_158/dense_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_158/dense_495/BiasAdd/ReadVariableOpReadVariableOp8sequential_158_dense_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 sequential_158/dense_495/BiasAddBiasAdd)sequential_158/dense_495/MatMul:product:07sequential_158/dense_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
sequential_158/dense_495/ReluRelu)sequential_158/dense_495/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
.sequential_158/dense_496/MatMul/ReadVariableOpReadVariableOp7sequential_158_dense_496_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_158/dense_496/MatMulMatMul+sequential_158/dense_495/Relu:activations:06sequential_158/dense_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_158/dense_496/BiasAdd/ReadVariableOpReadVariableOp8sequential_158_dense_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
 sequential_158/dense_496/BiasAddBiasAdd)sequential_158/dense_496/MatMul:product:07sequential_158/dense_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
sequential_158/dense_496/ReluRelu)sequential_158/dense_496/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
.sequential_158/dense_497/MatMul/ReadVariableOpReadVariableOp7sequential_158_dense_497_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
sequential_158/dense_497/MatMulMatMul+sequential_158/dense_496/Relu:activations:06sequential_158/dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_158/dense_497/BiasAdd/ReadVariableOpReadVariableOp8sequential_158_dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_158/dense_497/BiasAddBiasAdd)sequential_158/dense_497/MatMul:product:07sequential_158/dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_158/dense_497/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_158/dense_495/BiasAdd/ReadVariableOp/^sequential_158/dense_495/MatMul/ReadVariableOp0^sequential_158/dense_496/BiasAdd/ReadVariableOp/^sequential_158/dense_496/MatMul/ReadVariableOp0^sequential_158/dense_497/BiasAdd/ReadVariableOp/^sequential_158/dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2b
/sequential_158/dense_495/BiasAdd/ReadVariableOp/sequential_158/dense_495/BiasAdd/ReadVariableOp2`
.sequential_158/dense_495/MatMul/ReadVariableOp.sequential_158/dense_495/MatMul/ReadVariableOp2b
/sequential_158/dense_496/BiasAdd/ReadVariableOp/sequential_158/dense_496/BiasAdd/ReadVariableOp2`
.sequential_158/dense_496/MatMul/ReadVariableOp.sequential_158/dense_496/MatMul/ReadVariableOp2b
/sequential_158/dense_497/BiasAdd/ReadVariableOp/sequential_158/dense_497/BiasAdd/ReadVariableOp2`
.sequential_158/dense_497/MatMul/ReadVariableOp.sequential_158/dense_497/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namex
?

?
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_728870
x(
sequential_158_728856:	?$
sequential_158_728858:	?)
sequential_158_728860:
??$
sequential_158_728862:	?(
sequential_158_728864:	?#
sequential_158_728866:
identity??&sequential_158/StatefulPartitionedCall?
&sequential_158/StatefulPartitionedCallStatefulPartitionedCallxsequential_158_728856sequential_158_728858sequential_158_728860sequential_158_728862sequential_158_728864sequential_158_728866*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_158_layer_call_and_return_conditional_losses_728855~
IdentityIdentity/sequential_158/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????o
NoOpNoOp'^sequential_158/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2P
&sequential_158/StatefulPartitionedCall&sequential_158/StatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?8
?
"__inference__traced_restore_729500
file_prefix#
assignvariableop_sgd_iter:	 &
assignvariableop_1_sgd_decay: .
$assignvariableop_2_sgd_learning_rate: )
assignvariableop_3_sgd_momentum: 6
#assignvariableop_4_dense_495_kernel:	?0
!assignvariableop_5_dense_495_bias:	?7
#assignvariableop_6_dense_496_kernel:
??0
!assignvariableop_7_dense_496_bias:	?6
#assignvariableop_8_dense_497_kernel:	?/
!assignvariableop_9_dense_497_bias:#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: 
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	[
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
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_495_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_495_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_496_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_496_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_497_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_497_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
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
?
?
*__inference_dense_497_layer_call_fn_729373

inputs
unknown:	?
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
E__inference_dense_497_layer_call_and_return_conditional_losses_728661o
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
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
/__inference_sequential_158_layer_call_fn_728784
dense_495_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_495_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_158_layer_call_and_return_conditional_losses_728752o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_495_input
?
?
4__inference_neural_network_3_56_layer_call_fn_729067
x
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_728870o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?	
?
/__inference_sequential_158_layer_call_fn_728683
dense_495_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_495_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_158_layer_call_and_return_conditional_losses_728668o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namedense_495_input
?
?
/__inference_sequential_158_layer_call_fn_729187

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_158_layer_call_and_return_conditional_losses_728752o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_158_layer_call_and_return_conditional_losses_729323

inputs;
(dense_495_matmul_readvariableop_resource:	?8
)dense_495_biasadd_readvariableop_resource:	?<
(dense_496_matmul_readvariableop_resource:
??8
)dense_496_biasadd_readvariableop_resource:	?;
(dense_497_matmul_readvariableop_resource:	?7
)dense_497_biasadd_readvariableop_resource:
identity?? dense_495/BiasAdd/ReadVariableOp?dense_495/MatMul/ReadVariableOp? dense_496/BiasAdd/ReadVariableOp?dense_496/MatMul/ReadVariableOp? dense_497/BiasAdd/ReadVariableOp?dense_497/MatMul/ReadVariableOp_
dense_495/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
dense_495/MatMul/ReadVariableOpReadVariableOp(dense_495_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_495/MatMulMatMuldense_495/Cast:y:0'dense_495/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_495/BiasAdd/ReadVariableOpReadVariableOp)dense_495_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_495/BiasAddBiasAdddense_495/MatMul:product:0(dense_495/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_495/ReluReludense_495/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_496/MatMul/ReadVariableOpReadVariableOp(dense_496_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_496/MatMulMatMuldense_495/Relu:activations:0'dense_496/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 dense_496/BiasAdd/ReadVariableOpReadVariableOp)dense_496_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_496/BiasAddBiasAdddense_496/MatMul:product:0(dense_496/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
dense_496/ReluReludense_496/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_497/MatMul/ReadVariableOpReadVariableOp(dense_497_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_497/MatMulMatMuldense_496/Relu:activations:0'dense_497/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_497/BiasAdd/ReadVariableOpReadVariableOp)dense_497_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_497/BiasAddBiasAdddense_497/MatMul:product:0(dense_497/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_497/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_495/BiasAdd/ReadVariableOp ^dense_495/MatMul/ReadVariableOp!^dense_496/BiasAdd/ReadVariableOp ^dense_496/MatMul/ReadVariableOp!^dense_497/BiasAdd/ReadVariableOp ^dense_497/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_495/BiasAdd/ReadVariableOp dense_495/BiasAdd/ReadVariableOp2B
dense_495/MatMul/ReadVariableOpdense_495/MatMul/ReadVariableOp2D
 dense_496/BiasAdd/ReadVariableOp dense_496/BiasAdd/ReadVariableOp2B
dense_496/MatMul/ReadVariableOpdense_496/MatMul/ReadVariableOp2D
 dense_497/BiasAdd/ReadVariableOp dense_497/BiasAdd/ReadVariableOp2B
dense_497/MatMul/ReadVariableOpdense_497/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729046
input_1(
sequential_158_729032:	?$
sequential_158_729034:	?)
sequential_158_729036:
??$
sequential_158_729038:	?(
sequential_158_729040:	?#
sequential_158_729042:
identity??&sequential_158/StatefulPartitionedCall?
&sequential_158/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_158_729032sequential_158_729034sequential_158_729036sequential_158_729038sequential_158_729040sequential_158_729042*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_158_layer_call_and_return_conditional_losses_728929~
IdentityIdentity/sequential_158/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????o
NoOpNoOp'^sequential_158/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2P
&sequential_158/StatefulPartitionedCall&sequential_158/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_728980
x(
sequential_158_728966:	?$
sequential_158_728968:	?)
sequential_158_728970:
??$
sequential_158_728972:	?(
sequential_158_728974:	?#
sequential_158_728976:
identity??&sequential_158/StatefulPartitionedCall?
&sequential_158/StatefulPartitionedCallStatefulPartitionedCallxsequential_158_728966sequential_158_728968sequential_158_728970sequential_158_728972sequential_158_728974sequential_158_728976*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_158_layer_call_and_return_conditional_losses_728929~
IdentityIdentity/sequential_158/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????o
NoOpNoOp'^sequential_158/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2P
&sequential_158/StatefulPartitionedCall&sequential_158/StatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex"?L
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
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?j
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
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
I
iter
	decay
learning_rate
momentum"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
4__inference_neural_network_3_56_layer_call_fn_728885
4__inference_neural_network_3_56_layer_call_fn_729067
4__inference_neural_network_3_56_layer_call_fn_729084
4__inference_neural_network_3_56_layer_call_fn_729012?
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
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729109
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729134
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729029
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729046?
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
!__inference__wrapped_model_728608input_1"?
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
#serving_default"
signature_map
?

kernel
bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_sequential_158_layer_call_fn_728683
/__inference_sequential_158_layer_call_fn_729170
/__inference_sequential_158_layer_call_fn_729187
/__inference_sequential_158_layer_call_fn_728784
/__inference_sequential_158_layer_call_fn_729204
/__inference_sequential_158_layer_call_fn_729221?
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_729247
J__inference_sequential_158_layer_call_and_return_conditional_losses_729273
J__inference_sequential_158_layer_call_and_return_conditional_losses_728804
J__inference_sequential_158_layer_call_and_return_conditional_losses_728824
J__inference_sequential_158_layer_call_and_return_conditional_losses_729298
J__inference_sequential_158_layer_call_and_return_conditional_losses_729323?
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
#:!	?2dense_495/kernel
:?2dense_495/bias
$:"
??2dense_496/kernel
:?2dense_496/bias
#:!	?2dense_497/kernel
:2dense_497/bias
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_729153input_1"?
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
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_495_layer_call_fn_729332?
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
E__inference_dense_495_layer_call_and_return_conditional_losses_729344?
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
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_496_layer_call_fn_729353?
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
E__inference_dense_496_layer_call_and_return_conditional_losses_729364?
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
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_497_layer_call_fn_729373?
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
E__inference_dense_497_layer_call_and_return_conditional_losses_729383?
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
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Ltotal
	Mcount
N	variables
O	keras_api"
_tf_keras_metric
^
	Ptotal
	Qcount
R
_fn_kwargs
S	variables
T	keras_api"
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
L0
M1"
trackable_list_wrapper
-
N	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
P0
Q1"
trackable_list_wrapper
-
S	variables"
_generic_user_object?
!__inference__wrapped_model_728608o0?-
&?#
!?
input_1?????????
? "3?0
.
output_1"?
output_1??????????
E__inference_dense_495_layer_call_and_return_conditional_losses_729344]/?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????
? ~
*__inference_dense_495_layer_call_fn_729332P/?,
%?"
 ?
inputs?????????
? "????????????
E__inference_dense_496_layer_call_and_return_conditional_losses_729364^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_496_layer_call_fn_729353Q0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_497_layer_call_and_return_conditional_losses_729383]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_497_layer_call_fn_729373P0?-
&?#
!?
inputs??????????
? "???????????
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729029e4?1
*?'
!?
input_1?????????
p 
? "%?"
?
0?????????
? ?
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729046e4?1
*?'
!?
input_1?????????
p
? "%?"
?
0?????????
? ?
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729109_.?+
$?!
?
x?????????
p 
? "%?"
?
0?????????
? ?
O__inference_neural_network_3_56_layer_call_and_return_conditional_losses_729134_.?+
$?!
?
x?????????
p
? "%?"
?
0?????????
? ?
4__inference_neural_network_3_56_layer_call_fn_728885X4?1
*?'
!?
input_1?????????
p 
? "???????????
4__inference_neural_network_3_56_layer_call_fn_729012X4?1
*?'
!?
input_1?????????
p
? "???????????
4__inference_neural_network_3_56_layer_call_fn_729067R.?+
$?!
?
x?????????
p 
? "???????????
4__inference_neural_network_3_56_layer_call_fn_729084R.?+
$?!
?
x?????????
p
? "???????????
J__inference_sequential_158_layer_call_and_return_conditional_losses_728804q@?=
6?3
)?&
dense_495_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_158_layer_call_and_return_conditional_losses_728824q@?=
6?3
)?&
dense_495_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_158_layer_call_and_return_conditional_losses_729247h7?4
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_729273h7?4
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_729298h7?4
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
J__inference_sequential_158_layer_call_and_return_conditional_losses_729323h7?4
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
/__inference_sequential_158_layer_call_fn_728683d@?=
6?3
)?&
dense_495_input?????????
p 

 
? "???????????
/__inference_sequential_158_layer_call_fn_728784d@?=
6?3
)?&
dense_495_input?????????
p

 
? "???????????
/__inference_sequential_158_layer_call_fn_729170[7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
/__inference_sequential_158_layer_call_fn_729187[7?4
-?*
 ?
inputs?????????
p

 
? "???????????
/__inference_sequential_158_layer_call_fn_729204[7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
/__inference_sequential_158_layer_call_fn_729221[7?4
-?*
 ?
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_729153z;?8
? 
1?.
,
input_1!?
input_1?????????"3?0
.
output_1"?
output_1?????????