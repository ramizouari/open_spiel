�
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint�
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
p
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2	"
adj_xbool( "
adj_ybool( 
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
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
�
DenseBincount
input"Tidx
size"Tidx
weights"T
output"T"
Tidxtype:
2	"
Ttype:
2	"
binary_outputbool( 
$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
$

LogicalAnd
x

y

z
�
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
�
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
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
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
|
value_targets/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namevalue_targets/bias
u
&value_targets/bias/Read/ReadVariableOpReadVariableOpvalue_targets/bias*
_output_shapes
:*
dtype0
�
value_targets/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*%
shared_namevalue_targets/kernel
~
(value_targets/kernel/Read/ReadVariableOpReadVariableOpvalue_targets/kernel*
_output_shapes
:	�*
dtype0
�
policy_targets_unmasked/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namepolicy_targets_unmasked/bias
�
0policy_targets_unmasked/bias/Read/ReadVariableOpReadVariableOppolicy_targets_unmasked/bias*
_output_shapes
:*
dtype0
�
policy_targets_unmasked/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name policy_targets_unmasked/kernel
�
2policy_targets_unmasked/kernel/Read/ReadVariableOpReadVariableOppolicy_targets_unmasked/kernel*
_output_shapes
:	�*
dtype0
�
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_1/moving_variance
�
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes	
:�*
dtype0
�
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_1/moving_mean
�
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_1/beta
�
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_1/gamma
�
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes	
:�*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��*
dtype0
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:�*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:�*
dtype0
�
serving_default_environmentPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
x
serving_default_statePlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_environmentserving_default_state#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betadense/kernel
dense/bias%batch_normalization_1/moving_variancebatch_normalization_1/gamma!batch_normalization_1/moving_meanbatch_normalization_1/betapolicy_targets_unmasked/kernelpolicy_targets_unmasked/biasvalue_targets/kernelvalue_targets/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_1208

NoOpNoOp
�P
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�O
value�OB�O B�O
�
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

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*

_init_input_shape* 
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses* 
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses* 
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8axis
	9gamma
:beta
;moving_mean
<moving_variance*
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias*
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance*

P	keras_api* 
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias*
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses* 
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias*
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses* 
j
90
:1
;2
<3
C4
D5
L6
M7
N8
O9
W10
X11
e12
f13*
J
90
:1
C2
D3
L4
M5
W6
X7
e8
f9*
	
m0* 
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
strace_0
ttrace_1
utrace_2
vtrace_3* 
6
wtrace_0
xtrace_1
ytrace_2
ztrace_3* 
* 
O
{
_variables
|_iterations
}_learning_rate
~_update_step_xla*
* 

serving_default* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
 
90
:1
;2
<3*

90
:1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

C0
D1*

C0
D1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
L0
M1
N2
O3*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 

W0
X1*

W0
X1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
nh
VARIABLE_VALUEpolicy_targets_unmasked/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEpolicy_targets_unmasked/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

e0
f1*

e0
f1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEvalue_targets/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEvalue_targets/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�trace_0* 
 
;0
<1
N2
O3*
j
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
13*

�0
�1
�2*
	
m0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

|0*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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

;0
<1*
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

N0
O1*
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
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamebatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense/kernel
dense/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancepolicy_targets_unmasked/kernelpolicy_targets_unmasked/biasvalue_targets/kernelvalue_targets/bias	iterationlearning_ratetotal_2count_2total_1count_1totalcountConst*#
Tin
2*
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
GPU 2J 8� *&
f!R
__inference__traced_save_2068
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense/kernel
dense/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancepolicy_targets_unmasked/kernelpolicy_targets_unmasked/biasvalue_targets/kernelvalue_targets/bias	iterationlearning_ratetotal_2count_2total_1count_1totalcount*"
Tin
2*
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
GPU 2J 8� *)
f$R"
 __inference__traced_restore_2144��
�
�
"__inference_signature_wrapper_1208
environment	
state
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:

unknown_11:	�

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallenvironmentstateunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__wrapped_model_392o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:NJ
'
_output_shapes
:���������

_user_specified_namestate:\ X
/
_output_shapes
:���������
%
_user_specified_nameenvironment
�
�
4__inference_batch_normalization_1_layer_call_fn_1749

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_batch_normalization_1_layer_call_and_return_conditional_losses_509p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
q
E__inference_concatenate_layer_call_and_return_conditional_losses_1637
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :x
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs_0
�
�
6__inference_policy_targets_unmasked_layer_call_fn_1825

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_policy_targets_unmasked_layer_call_and_return_conditional_losses_678o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
N__inference_batch_normalization_1_layer_call_and_return_conditional_losses_509

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1816

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�@
�
<__inference_mlp_layer_call_and_return_conditional_losses_897

inputs
inputs_1&
batch_normalization_845:	�&
batch_normalization_847:	�&
batch_normalization_849:	�&
batch_normalization_851:	�
	dense_854:
��
	dense_856:	�(
batch_normalization_1_863:	�(
batch_normalization_1_865:	�(
batch_normalization_1_867:	�(
batch_normalization_1_869:	�.
policy_targets_unmasked_872:	�)
policy_targets_unmasked_874:$
value_targets_879:	�
value_targets_881:
identity

identity_1��StatefulPartitionedCall�+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�/policy_targets_unmasked/StatefulPartitionedCall�&state_encoding/StatefulPartitionedCall�%value_targets/StatefulPartitionedCall�
reshape/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_reshape_layer_call_and_return_conditional_losses_573�
&state_encoding/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_state_encoding_layer_call_and_return_conditional_losses_610�
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_618�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0/state_encoding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_concatenate_layer_call_and_return_conditional_losses_627�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0batch_normalization_845batch_normalization_847batch_normalization_849batch_normalization_851*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_batch_normalization_layer_call_and_return_conditional_losses_427�
dense/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0	dense_854	dense_856*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_648}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*
ellipsis_mask*
shrink_axis_mask�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_1_863batch_normalization_1_865batch_normalization_1_867batch_normalization_1_869*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_batch_normalization_1_layer_call_and_return_conditional_losses_509�
/policy_targets_unmasked/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0policy_targets_unmasked_872policy_targets_unmasked_874*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_policy_targets_unmasked_layer_call_and_return_conditional_losses_678�
legals_mask/PartitionedCallPartitionedCall/tf.__operators__.getitem/strided_slice:output:0/state_encoding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_legals_mask_layer_call_and_return_conditional_losses_696�
policy_targets/PartitionedCallPartitionedCall8policy_targets_unmasked/StatefulPartitionedCall:output:0$legals_mask/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_policy_targets_layer_call_and_return_conditional_losses_704�
%value_targets/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0value_targets_879value_targets_881*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_value_targets_layer_call_and_return_conditional_losses_717�
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_849batch_normalization_851	dense_854	dense_856batch_normalization_1_867batch_normalization_1_869policy_targets_unmasked_872policy_targets_unmasked_874value_targets_879value_targets_881*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *,
_read_only_resource_inputs

 	*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___759}
IdentityIdentity.value_targets/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������x

Identity_1Identity'policy_targets/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^dense/StatefulPartitionedCall0^policy_targets_unmasked/StatefulPartitionedCall'^state_encoding/StatefulPartitionedCall&^value_targets/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2b
/policy_targets_unmasked/StatefulPartitionedCall/policy_targets_unmasked/StatefulPartitionedCall2P
&state_encoding/StatefulPartitionedCall&state_encoding/StatefulPartitionedCall2N
%value_targets/StatefulPartitionedCall%value_targets/StatefulPartitionedCall:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
f
-__inference_state_encoding_layer_call_fn_1589

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_state_encoding_layer_call_and_return_conditional_losses_610o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
v
G__inference_state_encoding_layer_call_and_return_conditional_losses_610

inputs
identity��Assert/AssertV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       C
MaxMaxinputsConst:output:0*
T0*
_output_shapes
: X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"       E
MinMininputsConst_1:output:0*
T0*
_output_shapes
: H
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: K
GreaterGreaterCast:y:0Max:output:0*
T0*
_output_shapes
: J
Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : Q
Cast_1CastCast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: W
GreaterEqualGreaterEqualMin:output:0
Cast_1:y:0*
T0*
_output_shapes
: O

LogicalAnd
LogicalAndGreater:z:0GreaterEqual:z:0*
_output_shapes
: �
Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=20�
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=20�
Assert/AssertAssertLogicalAnd:z:0Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 n
bincount/CastCastinputs^Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:���������]
bincount/ShapeShapebincount/Cast:y:0*
T0*
_output_shapes
::��h
bincount/ConstConst^Assert/Assert*
_output_shapes
:*
dtype0*
valueB: h
bincount/ProdProdbincount/Shape:output:0bincount/Const:output:0*
T0*
_output_shapes
: d
bincount/Greater/yConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B : q
bincount/GreaterGreaterbincount/Prod:output:0bincount/Greater/y:output:0*
T0*
_output_shapes
: ]
bincount/Cast_1Castbincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: q
bincount/Const_1Const^Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       b
bincount/MaxMaxbincount/Cast:y:0bincount/Const_1:output:0*
T0*
_output_shapes
: `
bincount/add/yConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :f
bincount/addAddV2bincount/Max:output:0bincount/add/y:output:0*
T0*
_output_shapes
: [
bincount/mulMulbincount/Cast_1:y:0bincount/add:z:0*
T0*
_output_shapes
: d
bincount/minlengthConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :k
bincount/MaximumMaximumbincount/minlength:output:0bincount/mul:z:0*
T0*
_output_shapes
: d
bincount/maxlengthConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :o
bincount/MinimumMinimumbincount/maxlength:output:0bincount/Maximum:z:0*
T0*
_output_shapes
: c
bincount/Const_2Const^Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
bincount/DenseBincountDenseBincountbincount/Cast:y:0bincount/Minimum:z:0bincount/Const_2:output:0*

Tidx0*
T0*'
_output_shapes
:���������*
binary_output(n
IdentityIdentitybincount/DenseBincount:output:0^NoOp*
T0*'
_output_shapes
:���������V
NoOpNoOp^Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������2
Assert/AssertAssert/Assert:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
=__inference_mlp_layer_call_and_return_conditional_losses_1556
inputs_0
inputs_1D
5batch_normalization_batchnorm_readvariableop_resource:	�H
9batch_normalization_batchnorm_mul_readvariableop_resource:	�F
7batch_normalization_batchnorm_readvariableop_1_resource:	�F
7batch_normalization_batchnorm_readvariableop_2_resource:	�8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�F
7batch_normalization_1_batchnorm_readvariableop_resource:	�J
;batch_normalization_1_batchnorm_mul_readvariableop_resource:	�H
9batch_normalization_1_batchnorm_readvariableop_1_resource:	�H
9batch_normalization_1_batchnorm_readvariableop_2_resource:	�I
6policy_targets_unmasked_matmul_readvariableop_resource:	�E
7policy_targets_unmasked_biasadd_readvariableop_resource:?
,value_targets_matmul_readvariableop_resource:	�;
-value_targets_biasadd_readvariableop_resource:
identity

identity_1��StatefulPartitionedCall�,batch_normalization/batchnorm/ReadVariableOp�.batch_normalization/batchnorm/ReadVariableOp_1�.batch_normalization/batchnorm/ReadVariableOp_2�0batch_normalization/batchnorm/mul/ReadVariableOp�.batch_normalization_1/batchnorm/ReadVariableOp�0batch_normalization_1/batchnorm/ReadVariableOp_1�0batch_normalization_1/batchnorm/ReadVariableOp_2�2batch_normalization_1/batchnorm/mul/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�.policy_targets_unmasked/BiasAdd/ReadVariableOp�-policy_targets_unmasked/MatMul/ReadVariableOp�state_encoding/Assert/Assert�$value_targets/BiasAdd/ReadVariableOp�#value_targets/MatMul/ReadVariableOpS
reshape/ShapeShapeinputs_1*
T0*
_output_shapes
::��e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:v
reshape/ReshapeReshapeinputs_1reshape/Reshape/shape:output:0*
T0*'
_output_shapes
:���������e
state_encoding/ConstConst*
_output_shapes
:*
dtype0*
valueB"       s
state_encoding/MaxMaxreshape/Reshape:output:0state_encoding/Const:output:0*
T0*
_output_shapes
: g
state_encoding/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       u
state_encoding/MinMinreshape/Reshape:output:0state_encoding/Const_1:output:0*
T0*
_output_shapes
: W
state_encoding/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :k
state_encoding/CastCaststate_encoding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: x
state_encoding/GreaterGreaterstate_encoding/Cast:y:0state_encoding/Max:output:0*
T0*
_output_shapes
: Y
state_encoding/Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : o
state_encoding/Cast_1Cast state_encoding/Cast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
state_encoding/GreaterEqualGreaterEqualstate_encoding/Min:output:0state_encoding/Cast_1:y:0*
T0*
_output_shapes
: |
state_encoding/LogicalAnd
LogicalAndstate_encoding/Greater:z:0state_encoding/GreaterEqual:z:0*
_output_shapes
: �
state_encoding/Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=20�
#state_encoding/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=20�
state_encoding/Assert/AssertAssertstate_encoding/LogicalAnd:z:0,state_encoding/Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 �
state_encoding/bincount/CastCastreshape/Reshape:output:0^state_encoding/Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:���������{
state_encoding/bincount/ShapeShape state_encoding/bincount/Cast:y:0*
T0*
_output_shapes
::���
state_encoding/bincount/ConstConst^state_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB: �
state_encoding/bincount/ProdProd&state_encoding/bincount/Shape:output:0&state_encoding/bincount/Const:output:0*
T0*
_output_shapes
: �
!state_encoding/bincount/Greater/yConst^state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : �
state_encoding/bincount/GreaterGreater%state_encoding/bincount/Prod:output:0*state_encoding/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
state_encoding/bincount/Cast_1Cast#state_encoding/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
state_encoding/bincount/Const_1Const^state_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       �
state_encoding/bincount/MaxMax state_encoding/bincount/Cast:y:0(state_encoding/bincount/Const_1:output:0*
T0*
_output_shapes
: ~
state_encoding/bincount/add/yConst^state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
state_encoding/bincount/addAddV2$state_encoding/bincount/Max:output:0&state_encoding/bincount/add/y:output:0*
T0*
_output_shapes
: �
state_encoding/bincount/mulMul"state_encoding/bincount/Cast_1:y:0state_encoding/bincount/add:z:0*
T0*
_output_shapes
: �
!state_encoding/bincount/minlengthConst^state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
state_encoding/bincount/MaximumMaximum*state_encoding/bincount/minlength:output:0state_encoding/bincount/mul:z:0*
T0*
_output_shapes
: �
!state_encoding/bincount/maxlengthConst^state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
state_encoding/bincount/MinimumMinimum*state_encoding/bincount/maxlength:output:0#state_encoding/bincount/Maximum:z:0*
T0*
_output_shapes
: �
state_encoding/bincount/Const_2Const^state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
%state_encoding/bincount/DenseBincountDenseBincount state_encoding/bincount/Cast:y:0#state_encoding/bincount/Minimum:z:0(state_encoding/bincount/Const_2:output:0*

Tidx0*
T0*'
_output_shapes
:���������*
binary_output(^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   o
flatten/ReshapeReshapeinputs_0flatten/Const:output:0*
T0*(
_output_shapes
:����������Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2flatten/Reshape:output:0.state_encoding/bincount/DenseBincount:output:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0h
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�y
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:��
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
#batch_normalization/batchnorm/mul_1Mulconcatenate/concat:output:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMul'batch_normalization/batchnorm/add_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs_05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*
ellipsis_mask*
shrink_axis_mask�
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0j
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_1/batchnorm/addAddV26batch_normalization_1/batchnorm/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�}
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
%batch_normalization_1/batchnorm/mul_1Muldense/BiasAdd:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
0batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
%batch_normalization_1/batchnorm/mul_2Mul8batch_normalization_1/batchnorm/ReadVariableOp_1:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
0batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_1/batchnorm/subSub8batch_normalization_1/batchnorm/ReadVariableOp_2:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
-policy_targets_unmasked/MatMul/ReadVariableOpReadVariableOp6policy_targets_unmasked_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
policy_targets_unmasked/MatMulMatMul)batch_normalization_1/batchnorm/add_1:z:05policy_targets_unmasked/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.policy_targets_unmasked/BiasAdd/ReadVariableOpReadVariableOp7policy_targets_unmasked_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
policy_targets_unmasked/BiasAddBiasAdd(policy_targets_unmasked/MatMul:product:06policy_targets_unmasked/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
policy_targets_unmasked/SoftmaxSoftmax(policy_targets_unmasked/BiasAdd:output:0*
T0*'
_output_shapes
:���������\
legals_mask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
legals_mask/ExpandDims
ExpandDims.state_encoding/bincount/DenseBincount:output:0#legals_mask/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������o
legals_mask/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
legals_mask/transpose	Transpose/tf.__operators__.getitem/strided_slice:output:0#legals_mask/transpose/perm:output:0*
T0*+
_output_shapes
:����������
legals_mask/MatMulBatchMatMulV2legals_mask/transpose:y:0legals_mask/ExpandDims:output:0*
T0*+
_output_shapes
:���������j
legals_mask/ShapeShapelegals_mask/MatMul:output:0*
T0*
_output_shapes
::���
legals_mask/SqueezeSqueezelegals_mask/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

����������
policy_targets/mulMul)policy_targets_unmasked/Softmax:softmax:0legals_mask/Squeeze:output:0*
T0*'
_output_shapes
:����������
#value_targets/MatMul/ReadVariableOpReadVariableOp,value_targets_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
value_targets/MatMulMatMul)batch_normalization_1/batchnorm/add_1:z:0+value_targets/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$value_targets/BiasAdd/ReadVariableOpReadVariableOp-value_targets_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
value_targets/BiasAddBiasAddvalue_targets/MatMul:product:0,value_targets/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
value_targets/TanhTanhvalue_targets/BiasAdd:output:0*
T0*'
_output_shapes
:����������
StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_batchnorm_mul_readvariableop_resource7batch_normalization_batchnorm_readvariableop_2_resource$dense_matmul_readvariableop_resource%dense_biasadd_readvariableop_resource;batch_normalization_1_batchnorm_mul_readvariableop_resource9batch_normalization_1_batchnorm_readvariableop_2_resource6policy_targets_unmasked_matmul_readvariableop_resource7policy_targets_unmasked_biasadd_readvariableop_resource,value_targets_matmul_readvariableop_resource-value_targets_biasadd_readvariableop_resource*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *,
_read_only_resource_inputs

 	*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___759e
IdentityIdentityvalue_targets/Tanh:y:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identitypolicy_targets/mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^StatefulPartitionedCall-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp1^batch_normalization_1/batchnorm/ReadVariableOp_11^batch_normalization_1/batchnorm/ReadVariableOp_23^batch_normalization_1/batchnorm/mul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp/^policy_targets_unmasked/BiasAdd/ReadVariableOp.^policy_targets_unmasked/MatMul/ReadVariableOp^state_encoding/Assert/Assert%^value_targets/BiasAdd/ReadVariableOp$^value_targets/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2d
0batch_normalization_1/batchnorm/ReadVariableOp_10batch_normalization_1/batchnorm/ReadVariableOp_12d
0batch_normalization_1/batchnorm/ReadVariableOp_20batch_normalization_1/batchnorm/ReadVariableOp_22`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2`
.policy_targets_unmasked/BiasAdd/ReadVariableOp.policy_targets_unmasked/BiasAdd/ReadVariableOp2^
-policy_targets_unmasked/MatMul/ReadVariableOp-policy_targets_unmasked/MatMul/ReadVariableOp2<
state_encoding/Assert/Assertstate_encoding/Assert/Assert2L
$value_targets/BiasAdd/ReadVariableOp$value_targets/BiasAdd/ReadVariableOp2J
#value_targets/MatMul/ReadVariableOp#value_targets/MatMul/ReadVariableOp:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
n
D__inference_concatenate_layer_call_and_return_conditional_losses_627

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:����������X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������:���������:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference_mlp_layer_call_fn_1244
inputs_0
inputs_1
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:

unknown_11:	�

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*,
_read_only_resource_inputs


*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_mlp_layer_call_and_return_conditional_losses_897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
V
*__inference_legals_mask_layer_call_fn_1842
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_legals_mask_layer_call_and_return_conditional_losses_696`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
B
&__inference_reshape_layer_call_fn_1561

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_reshape_layer_call_and_return_conditional_losses_573`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
Q__inference_policy_targets_unmasked_layer_call_and_return_conditional_losses_1836

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
L__inference_batch_normalization_layer_call_and_return_conditional_losses_427

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�@
�
<__inference_mlp_layer_call_and_return_conditional_losses_833
environment	
state&
batch_normalization_781:	�&
batch_normalization_783:	�&
batch_normalization_785:	�&
batch_normalization_787:	�
	dense_790:
��
	dense_792:	�(
batch_normalization_1_799:	�(
batch_normalization_1_801:	�(
batch_normalization_1_803:	�(
batch_normalization_1_805:	�.
policy_targets_unmasked_808:	�)
policy_targets_unmasked_810:$
value_targets_815:	�
value_targets_817:
identity

identity_1��StatefulPartitionedCall�+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�/policy_targets_unmasked/StatefulPartitionedCall�&state_encoding/StatefulPartitionedCall�%value_targets/StatefulPartitionedCall�
reshape/PartitionedCallPartitionedCallstate*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_reshape_layer_call_and_return_conditional_losses_573�
&state_encoding/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_state_encoding_layer_call_and_return_conditional_losses_610�
flatten/PartitionedCallPartitionedCallenvironment*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_618�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0/state_encoding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_concatenate_layer_call_and_return_conditional_losses_627�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0batch_normalization_781batch_normalization_783batch_normalization_785batch_normalization_787*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_batch_normalization_layer_call_and_return_conditional_losses_447�
dense/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0	dense_790	dense_792*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_648}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceenvironment5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*
ellipsis_mask*
shrink_axis_mask�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_1_799batch_normalization_1_801batch_normalization_1_803batch_normalization_1_805*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_batch_normalization_1_layer_call_and_return_conditional_losses_529�
/policy_targets_unmasked/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0policy_targets_unmasked_808policy_targets_unmasked_810*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_policy_targets_unmasked_layer_call_and_return_conditional_losses_678�
legals_mask/PartitionedCallPartitionedCall/tf.__operators__.getitem/strided_slice:output:0/state_encoding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_legals_mask_layer_call_and_return_conditional_losses_696�
policy_targets/PartitionedCallPartitionedCall8policy_targets_unmasked/StatefulPartitionedCall:output:0$legals_mask/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_policy_targets_layer_call_and_return_conditional_losses_704�
%value_targets/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0value_targets_815value_targets_817*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_value_targets_layer_call_and_return_conditional_losses_717�
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_783batch_normalization_787	dense_790	dense_792batch_normalization_1_801batch_normalization_1_805policy_targets_unmasked_808policy_targets_unmasked_810value_targets_815value_targets_817*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *,
_read_only_resource_inputs

 	*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___759}
IdentityIdentity.value_targets/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������x

Identity_1Identity'policy_targets/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^dense/StatefulPartitionedCall0^policy_targets_unmasked/StatefulPartitionedCall'^state_encoding/StatefulPartitionedCall&^value_targets/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2b
/policy_targets_unmasked/StatefulPartitionedCall/policy_targets_unmasked/StatefulPartitionedCall2P
&state_encoding/StatefulPartitionedCall&state_encoding/StatefulPartitionedCall2N
%value_targets/StatefulPartitionedCall%value_targets/StatefulPartitionedCall:NJ
'
_output_shapes
:���������

_user_specified_namestate:\ X
/
_output_shapes
:���������
%
_user_specified_nameenvironment
�
�
2__inference_batch_normalization_layer_call_fn_1650

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_batch_normalization_layer_call_and_return_conditional_losses_427p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
n
D__inference_legals_mask_layer_call_and_return_conditional_losses_696

inputs
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :q

ExpandDims
ExpandDimsinputs_1ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������q
MatMulBatchMatMulV2transpose:y:0ExpandDims:output:0*
T0*+
_output_shapes
:���������R
ShapeShapeMatMul:output:0*
T0*
_output_shapes
::��u
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

���������X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
Y
-__inference_policy_targets_layer_call_fn_1880
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_policy_targets_layer_call_and_return_conditional_losses_704`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�

�
P__inference_policy_targets_unmasked_layer_call_and_return_conditional_losses_678

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�@
�
<__inference_mlp_layer_call_and_return_conditional_losses_773
environment	
state&
batch_normalization_629:	�&
batch_normalization_631:	�&
batch_normalization_633:	�&
batch_normalization_635:	�
	dense_649:
��
	dense_651:	�(
batch_normalization_1_658:	�(
batch_normalization_1_660:	�(
batch_normalization_1_662:	�(
batch_normalization_1_664:	�.
policy_targets_unmasked_679:	�)
policy_targets_unmasked_681:$
value_targets_718:	�
value_targets_720:
identity

identity_1��StatefulPartitionedCall�+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�/policy_targets_unmasked/StatefulPartitionedCall�&state_encoding/StatefulPartitionedCall�%value_targets/StatefulPartitionedCall�
reshape/PartitionedCallPartitionedCallstate*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_reshape_layer_call_and_return_conditional_losses_573�
&state_encoding/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_state_encoding_layer_call_and_return_conditional_losses_610�
flatten/PartitionedCallPartitionedCallenvironment*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_618�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0/state_encoding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_concatenate_layer_call_and_return_conditional_losses_627�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0batch_normalization_629batch_normalization_631batch_normalization_633batch_normalization_635*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_batch_normalization_layer_call_and_return_conditional_losses_427�
dense/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0	dense_649	dense_651*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_648}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceenvironment5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*
ellipsis_mask*
shrink_axis_mask�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_1_658batch_normalization_1_660batch_normalization_1_662batch_normalization_1_664*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_batch_normalization_1_layer_call_and_return_conditional_losses_509�
/policy_targets_unmasked/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0policy_targets_unmasked_679policy_targets_unmasked_681*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_policy_targets_unmasked_layer_call_and_return_conditional_losses_678�
legals_mask/PartitionedCallPartitionedCall/tf.__operators__.getitem/strided_slice:output:0/state_encoding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_legals_mask_layer_call_and_return_conditional_losses_696�
policy_targets/PartitionedCallPartitionedCall8policy_targets_unmasked/StatefulPartitionedCall:output:0$legals_mask/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_policy_targets_layer_call_and_return_conditional_losses_704�
%value_targets/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0value_targets_718value_targets_720*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_value_targets_layer_call_and_return_conditional_losses_717�
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_633batch_normalization_635	dense_649	dense_651batch_normalization_1_662batch_normalization_1_664policy_targets_unmasked_679policy_targets_unmasked_681value_targets_718value_targets_720*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *,
_read_only_resource_inputs

 	*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___759}
IdentityIdentity.value_targets/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������x

Identity_1Identity'policy_targets/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^dense/StatefulPartitionedCall0^policy_targets_unmasked/StatefulPartitionedCall'^state_encoding/StatefulPartitionedCall&^value_targets/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2b
/policy_targets_unmasked/StatefulPartitionedCall/policy_targets_unmasked/StatefulPartitionedCall2P
&state_encoding/StatefulPartitionedCall&state_encoding/StatefulPartitionedCall2N
%value_targets/StatefulPartitionedCall%value_targets/StatefulPartitionedCall:NJ
'
_output_shapes
:���������

_user_specified_namestate:\ X
/
_output_shapes
:���������
%
_user_specified_nameenvironment
�
V
*__inference_concatenate_layer_call_fn_1630
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_concatenate_layer_call_and_return_conditional_losses_627a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs_0
�
t
H__inference_policy_targets_layer_call_and_return_conditional_losses_1886
inputs_0
inputs_1
identityP
mulMulinputs_0inputs_1*
T0*'
_output_shapes
:���������O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs_0
�	
q
E__inference_legals_mask_layer_call_and_return_conditional_losses_1854
inputs_0
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :q

ExpandDims
ExpandDimsinputs_1ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*+
_output_shapes
:���������q
MatMulBatchMatMulV2transpose:y:0ExpandDims:output:0*
T0*+
_output_shapes
:���������R
ShapeShapeMatMul:output:0*
T0*
_output_shapes
::��u
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

���������X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:���������:���������:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
�
$__inference_dense_layer_call_fn_1726

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_648p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1796

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
?__inference_dense_layer_call_and_return_conditional_losses_1736

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
L__inference_batch_normalization_layer_call_and_return_conditional_losses_447

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
]
A__inference_reshape_layer_call_and_return_conditional_losses_1573

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
w
H__inference_state_encoding_layer_call_and_return_conditional_losses_1624

inputs
identity��Assert/AssertV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       C
MaxMaxinputsConst:output:0*
T0*
_output_shapes
: X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"       E
MinMininputsConst_1:output:0*
T0*
_output_shapes
: H
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: K
GreaterGreaterCast:y:0Max:output:0*
T0*
_output_shapes
: J
Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : Q
Cast_1CastCast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: W
GreaterEqualGreaterEqualMin:output:0
Cast_1:y:0*
T0*
_output_shapes
: O

LogicalAnd
LogicalAndGreater:z:0GreaterEqual:z:0*
_output_shapes
: �
Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=20�
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=20�
Assert/AssertAssertLogicalAnd:z:0Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 n
bincount/CastCastinputs^Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:���������]
bincount/ShapeShapebincount/Cast:y:0*
T0*
_output_shapes
::��h
bincount/ConstConst^Assert/Assert*
_output_shapes
:*
dtype0*
valueB: h
bincount/ProdProdbincount/Shape:output:0bincount/Const:output:0*
T0*
_output_shapes
: d
bincount/Greater/yConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B : q
bincount/GreaterGreaterbincount/Prod:output:0bincount/Greater/y:output:0*
T0*
_output_shapes
: ]
bincount/Cast_1Castbincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: q
bincount/Const_1Const^Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       b
bincount/MaxMaxbincount/Cast:y:0bincount/Const_1:output:0*
T0*
_output_shapes
: `
bincount/add/yConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :f
bincount/addAddV2bincount/Max:output:0bincount/add/y:output:0*
T0*
_output_shapes
: [
bincount/mulMulbincount/Cast_1:y:0bincount/add:z:0*
T0*
_output_shapes
: d
bincount/minlengthConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :k
bincount/MaximumMaximumbincount/minlength:output:0bincount/mul:z:0*
T0*
_output_shapes
: d
bincount/maxlengthConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :o
bincount/MinimumMinimumbincount/maxlength:output:0bincount/Maximum:z:0*
T0*
_output_shapes
: c
bincount/Const_2Const^Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
bincount/DenseBincountDenseBincountbincount/Cast:y:0bincount/Minimum:z:0bincount/Const_2:output:0*

Tidx0*
T0*'
_output_shapes
:���������*
binary_output(n
IdentityIdentitybincount/DenseBincount:output:0^NoOp*
T0*'
_output_shapes
:���������V
NoOpNoOp^Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������2
Assert/AssertAssert/Assert:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�!
�
__inference___call___759-
l2loss_readvariableop_resource:	�/
 l2loss_1_readvariableop_resource:	�4
 l2loss_2_readvariableop_resource:
��/
 l2loss_3_readvariableop_resource:	�/
 l2loss_4_readvariableop_resource:	�/
 l2loss_5_readvariableop_resource:	�3
 l2loss_6_readvariableop_resource:	�.
 l2loss_7_readvariableop_resource:3
 l2loss_8_readvariableop_resource:	�.
 l2loss_9_readvariableop_resource:
identity��L2Loss/ReadVariableOp�L2Loss_1/ReadVariableOp�L2Loss_2/ReadVariableOp�L2Loss_3/ReadVariableOp�L2Loss_4/ReadVariableOp�L2Loss_5/ReadVariableOp�L2Loss_6/ReadVariableOp�L2Loss_7/ReadVariableOp�L2Loss_8/ReadVariableOp�L2Loss_9/ReadVariableOpq
L2Loss/ReadVariableOpReadVariableOpl2loss_readvariableop_resource*
_output_shapes	
:�*
dtype0P
L2LossL2LossL2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: u
L2Loss_1/ReadVariableOpReadVariableOp l2loss_1_readvariableop_resource*
_output_shapes	
:�*
dtype0T
L2Loss_1L2LossL2Loss_1/ReadVariableOp:value:0*
T0*
_output_shapes
: z
L2Loss_2/ReadVariableOpReadVariableOp l2loss_2_readvariableop_resource* 
_output_shapes
:
��*
dtype0T
L2Loss_2L2LossL2Loss_2/ReadVariableOp:value:0*
T0*
_output_shapes
: u
L2Loss_3/ReadVariableOpReadVariableOp l2loss_3_readvariableop_resource*
_output_shapes	
:�*
dtype0T
L2Loss_3L2LossL2Loss_3/ReadVariableOp:value:0*
T0*
_output_shapes
: u
L2Loss_4/ReadVariableOpReadVariableOp l2loss_4_readvariableop_resource*
_output_shapes	
:�*
dtype0T
L2Loss_4L2LossL2Loss_4/ReadVariableOp:value:0*
T0*
_output_shapes
: u
L2Loss_5/ReadVariableOpReadVariableOp l2loss_5_readvariableop_resource*
_output_shapes	
:�*
dtype0T
L2Loss_5L2LossL2Loss_5/ReadVariableOp:value:0*
T0*
_output_shapes
: y
L2Loss_6/ReadVariableOpReadVariableOp l2loss_6_readvariableop_resource*
_output_shapes
:	�*
dtype0T
L2Loss_6L2LossL2Loss_6/ReadVariableOp:value:0*
T0*
_output_shapes
: t
L2Loss_7/ReadVariableOpReadVariableOp l2loss_7_readvariableop_resource*
_output_shapes
:*
dtype0T
L2Loss_7L2LossL2Loss_7/ReadVariableOp:value:0*
T0*
_output_shapes
: y
L2Loss_8/ReadVariableOpReadVariableOp l2loss_8_readvariableop_resource*
_output_shapes
:	�*
dtype0T
L2Loss_8L2LossL2Loss_8/ReadVariableOp:value:0*
T0*
_output_shapes
: t
L2Loss_9/ReadVariableOpReadVariableOp l2loss_9_readvariableop_resource*
_output_shapes
:*
dtype0T
L2Loss_9L2LossL2Loss_9/ReadVariableOp:value:0*
T0*
_output_shapes
: �
AddNAddNL2Loss:output:0L2Loss_1:output:0L2Loss_2:output:0L2Loss_3:output:0L2Loss_4:output:0L2Loss_5:output:0L2Loss_6:output:0L2Loss_7:output:0L2Loss_8:output:0L2Loss_9:output:0*
N
*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8G
mulMulmul/x:output:0
AddN:sum:0*
T0*
_output_shapes
: E
IdentityIdentitymul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^L2Loss/ReadVariableOp^L2Loss_1/ReadVariableOp^L2Loss_2/ReadVariableOp^L2Loss_3/ReadVariableOp^L2Loss_4/ReadVariableOp^L2Loss_5/ReadVariableOp^L2Loss_6/ReadVariableOp^L2Loss_7/ReadVariableOp^L2Loss_8/ReadVariableOp^L2Loss_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : : : : : : : 2.
L2Loss/ReadVariableOpL2Loss/ReadVariableOp22
L2Loss_1/ReadVariableOpL2Loss_1/ReadVariableOp22
L2Loss_2/ReadVariableOpL2Loss_2/ReadVariableOp22
L2Loss_3/ReadVariableOpL2Loss_3/ReadVariableOp22
L2Loss_4/ReadVariableOpL2Loss_4/ReadVariableOp22
L2Loss_5/ReadVariableOpL2Loss_5/ReadVariableOp22
L2Loss_6/ReadVariableOpL2Loss_6/ReadVariableOp22
L2Loss_7/ReadVariableOpL2Loss_7/ReadVariableOp22
L2Loss_8/ReadVariableOpL2Loss_8/ReadVariableOp22
L2Loss_9/ReadVariableOpL2Loss_9/ReadVariableOp
ɥ
�
__inference__traced_save_2068
file_prefix?
0read_disablecopyonread_batch_normalization_gamma:	�@
1read_1_disablecopyonread_batch_normalization_beta:	�G
8read_2_disablecopyonread_batch_normalization_moving_mean:	�K
<read_3_disablecopyonread_batch_normalization_moving_variance:	�9
%read_4_disablecopyonread_dense_kernel:
��2
#read_5_disablecopyonread_dense_bias:	�C
4read_6_disablecopyonread_batch_normalization_1_gamma:	�B
3read_7_disablecopyonread_batch_normalization_1_beta:	�I
:read_8_disablecopyonread_batch_normalization_1_moving_mean:	�M
>read_9_disablecopyonread_batch_normalization_1_moving_variance:	�K
8read_10_disablecopyonread_policy_targets_unmasked_kernel:	�D
6read_11_disablecopyonread_policy_targets_unmasked_bias:A
.read_12_disablecopyonread_value_targets_kernel:	�:
,read_13_disablecopyonread_value_targets_bias:-
#read_14_disablecopyonread_iteration:	 1
'read_15_disablecopyonread_learning_rate: +
!read_16_disablecopyonread_total_2: +
!read_17_disablecopyonread_count_2: +
!read_18_disablecopyonread_total_1: +
!read_19_disablecopyonread_count_1: )
read_20_disablecopyonread_total: )
read_21_disablecopyonread_count: 
savev2_const
identity_45��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
Read/DisableCopyOnReadDisableCopyOnRead0read_disablecopyonread_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp0read_disablecopyonread_batch_normalization_gamma^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0f
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�^

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_1/DisableCopyOnReadDisableCopyOnRead1read_1_disablecopyonread_batch_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp1read_1_disablecopyonread_batch_normalization_beta^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_2/DisableCopyOnReadDisableCopyOnRead8read_2_disablecopyonread_batch_normalization_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp8read_2_disablecopyonread_batch_normalization_moving_mean^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_3/DisableCopyOnReadDisableCopyOnRead<read_3_disablecopyonread_batch_normalization_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp<read_3_disablecopyonread_batch_normalization_moving_variance^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:�y
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_dense_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��w
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_dense_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_6/DisableCopyOnReadDisableCopyOnRead4read_6_disablecopyonread_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp4read_6_disablecopyonread_batch_normalization_1_gamma^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_7/DisableCopyOnReadDisableCopyOnRead3read_7_disablecopyonread_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp3read_7_disablecopyonread_batch_normalization_1_beta^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_8/DisableCopyOnReadDisableCopyOnRead:read_8_disablecopyonread_batch_normalization_1_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp:read_8_disablecopyonread_batch_normalization_1_moving_mean^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_9/DisableCopyOnReadDisableCopyOnRead>read_9_disablecopyonread_batch_normalization_1_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp>read_9_disablecopyonread_batch_normalization_1_moving_variance^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_10/DisableCopyOnReadDisableCopyOnRead8read_10_disablecopyonread_policy_targets_unmasked_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp8read_10_disablecopyonread_policy_targets_unmasked_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_11/DisableCopyOnReadDisableCopyOnRead6read_11_disablecopyonread_policy_targets_unmasked_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp6read_11_disablecopyonread_policy_targets_unmasked_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_12/DisableCopyOnReadDisableCopyOnRead.read_12_disablecopyonread_value_targets_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp.read_12_disablecopyonread_value_targets_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_13/DisableCopyOnReadDisableCopyOnRead,read_13_disablecopyonread_value_targets_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp,read_13_disablecopyonread_value_targets_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_14/DisableCopyOnReadDisableCopyOnRead#read_14_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp#read_14_disablecopyonread_iteration^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_learning_rate^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_16/DisableCopyOnReadDisableCopyOnRead!read_16_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp!read_16_disablecopyonread_total_2^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_17/DisableCopyOnReadDisableCopyOnRead!read_17_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp!read_17_disablecopyonread_count_2^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_18/DisableCopyOnReadDisableCopyOnRead!read_18_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp!read_18_disablecopyonread_total_1^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_19/DisableCopyOnReadDisableCopyOnRead!read_19_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp!read_19_disablecopyonread_count_1^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_20/DisableCopyOnReadDisableCopyOnReadread_20_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOpread_20_disablecopyonread_total^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_21/DisableCopyOnReadDisableCopyOnReadread_21_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOpread_21_disablecopyonread_count^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: �

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *%
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_44Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_45IdentityIdentity_44:output:0^NoOp*
T0*
_output_shapes
: �	
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_45Identity_45:output:0*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
q
G__inference_policy_targets_layer_call_and_return_conditional_losses_704

inputs
inputs_1
identityN
mulMulinputsinputs_1*
T0*'
_output_shapes
:���������O
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
4__inference_batch_normalization_1_layer_call_fn_1762

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_batch_normalization_1_layer_call_and_return_conditional_losses_529p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference_mlp_layer_call_fn_1026
environment	
state
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:

unknown_11:	�

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallenvironmentstateunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_mlp_layer_call_and_return_conditional_losses_993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:NJ
'
_output_shapes
:���������

_user_specified_namestate:\ X
/
_output_shapes
:���������
%
_user_specified_nameenvironment
�
�
2__inference_batch_normalization_layer_call_fn_1663

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_batch_normalization_layer_call_and_return_conditional_losses_447p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_1584

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
>__inference_dense_layer_call_and_return_conditional_losses_648

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
B
&__inference_flatten_layer_call_fn_1578

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_618a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1717

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�@
�
<__inference_mlp_layer_call_and_return_conditional_losses_993

inputs
inputs_1&
batch_normalization_941:	�&
batch_normalization_943:	�&
batch_normalization_945:	�&
batch_normalization_947:	�
	dense_950:
��
	dense_952:	�(
batch_normalization_1_959:	�(
batch_normalization_1_961:	�(
batch_normalization_1_963:	�(
batch_normalization_1_965:	�.
policy_targets_unmasked_968:	�)
policy_targets_unmasked_970:$
value_targets_975:	�
value_targets_977:
identity

identity_1��StatefulPartitionedCall�+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�/policy_targets_unmasked/StatefulPartitionedCall�&state_encoding/StatefulPartitionedCall�%value_targets/StatefulPartitionedCall�
reshape/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_reshape_layer_call_and_return_conditional_losses_573�
&state_encoding/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_state_encoding_layer_call_and_return_conditional_losses_610�
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_618�
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0/state_encoding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_concatenate_layer_call_and_return_conditional_losses_627�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0batch_normalization_941batch_normalization_943batch_normalization_945batch_normalization_947*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_batch_normalization_layer_call_and_return_conditional_losses_447�
dense/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0	dense_950	dense_952*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_dense_layer_call_and_return_conditional_losses_648}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*
ellipsis_mask*
shrink_axis_mask�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_1_959batch_normalization_1_961batch_normalization_1_963batch_normalization_1_965*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_batch_normalization_1_layer_call_and_return_conditional_losses_529�
/policy_targets_unmasked/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0policy_targets_unmasked_968policy_targets_unmasked_970*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_policy_targets_unmasked_layer_call_and_return_conditional_losses_678�
legals_mask/PartitionedCallPartitionedCall/tf.__operators__.getitem/strided_slice:output:0/state_encoding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_legals_mask_layer_call_and_return_conditional_losses_696�
policy_targets/PartitionedCallPartitionedCall8policy_targets_unmasked/StatefulPartitionedCall:output:0$legals_mask/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_policy_targets_layer_call_and_return_conditional_losses_704�
%value_targets/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0value_targets_975value_targets_977*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_value_targets_layer_call_and_return_conditional_losses_717�
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_943batch_normalization_947	dense_950	dense_952batch_normalization_1_961batch_normalization_1_965policy_targets_unmasked_968policy_targets_unmasked_970value_targets_975value_targets_977*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *,
_read_only_resource_inputs

 	*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___759}
IdentityIdentity.value_targets/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������x

Identity_1Identity'policy_targets/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^dense/StatefulPartitionedCall0^policy_targets_unmasked/StatefulPartitionedCall'^state_encoding/StatefulPartitionedCall&^value_targets/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2b
/policy_targets_unmasked/StatefulPartitionedCall/policy_targets_unmasked/StatefulPartitionedCall2P
&state_encoding/StatefulPartitionedCall&state_encoding/StatefulPartitionedCall2N
%value_targets/StatefulPartitionedCall%value_targets/StatefulPartitionedCall:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
,__inference_value_targets_layer_call_fn_1863

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_value_targets_layer_call_and_return_conditional_losses_717o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
F__inference_value_targets_layer_call_and_return_conditional_losses_717

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
\
@__inference_flatten_layer_call_and_return_conditional_losses_618

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
=__inference_mlp_layer_call_and_return_conditional_losses_1432
inputs_0
inputs_1J
;batch_normalization_assignmovingavg_readvariableop_resource:	�L
=batch_normalization_assignmovingavg_1_readvariableop_resource:	�H
9batch_normalization_batchnorm_mul_readvariableop_resource:	�D
5batch_normalization_batchnorm_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�L
=batch_normalization_1_assignmovingavg_readvariableop_resource:	�N
?batch_normalization_1_assignmovingavg_1_readvariableop_resource:	�J
;batch_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7batch_normalization_1_batchnorm_readvariableop_resource:	�I
6policy_targets_unmasked_matmul_readvariableop_resource:	�E
7policy_targets_unmasked_biasadd_readvariableop_resource:?
,value_targets_matmul_readvariableop_resource:	�;
-value_targets_biasadd_readvariableop_resource:
identity

identity_1��StatefulPartitionedCall�#batch_normalization/AssignMovingAvg�2batch_normalization/AssignMovingAvg/ReadVariableOp�%batch_normalization/AssignMovingAvg_1�4batch_normalization/AssignMovingAvg_1/ReadVariableOp�,batch_normalization/batchnorm/ReadVariableOp�0batch_normalization/batchnorm/mul/ReadVariableOp�%batch_normalization_1/AssignMovingAvg�4batch_normalization_1/AssignMovingAvg/ReadVariableOp�'batch_normalization_1/AssignMovingAvg_1�6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_1/batchnorm/ReadVariableOp�2batch_normalization_1/batchnorm/mul/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�.policy_targets_unmasked/BiasAdd/ReadVariableOp�-policy_targets_unmasked/MatMul/ReadVariableOp�state_encoding/Assert/Assert�$value_targets/BiasAdd/ReadVariableOp�#value_targets/MatMul/ReadVariableOpS
reshape/ShapeShapeinputs_1*
T0*
_output_shapes
::��e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:v
reshape/ReshapeReshapeinputs_1reshape/Reshape/shape:output:0*
T0*'
_output_shapes
:���������e
state_encoding/ConstConst*
_output_shapes
:*
dtype0*
valueB"       s
state_encoding/MaxMaxreshape/Reshape:output:0state_encoding/Const:output:0*
T0*
_output_shapes
: g
state_encoding/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       u
state_encoding/MinMinreshape/Reshape:output:0state_encoding/Const_1:output:0*
T0*
_output_shapes
: W
state_encoding/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :k
state_encoding/CastCaststate_encoding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: x
state_encoding/GreaterGreaterstate_encoding/Cast:y:0state_encoding/Max:output:0*
T0*
_output_shapes
: Y
state_encoding/Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : o
state_encoding/Cast_1Cast state_encoding/Cast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
state_encoding/GreaterEqualGreaterEqualstate_encoding/Min:output:0state_encoding/Cast_1:y:0*
T0*
_output_shapes
: |
state_encoding/LogicalAnd
LogicalAndstate_encoding/Greater:z:0state_encoding/GreaterEqual:z:0*
_output_shapes
: �
state_encoding/Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=20�
#state_encoding/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=20�
state_encoding/Assert/AssertAssertstate_encoding/LogicalAnd:z:0,state_encoding/Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 �
state_encoding/bincount/CastCastreshape/Reshape:output:0^state_encoding/Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:���������{
state_encoding/bincount/ShapeShape state_encoding/bincount/Cast:y:0*
T0*
_output_shapes
::���
state_encoding/bincount/ConstConst^state_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB: �
state_encoding/bincount/ProdProd&state_encoding/bincount/Shape:output:0&state_encoding/bincount/Const:output:0*
T0*
_output_shapes
: �
!state_encoding/bincount/Greater/yConst^state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : �
state_encoding/bincount/GreaterGreater%state_encoding/bincount/Prod:output:0*state_encoding/bincount/Greater/y:output:0*
T0*
_output_shapes
: {
state_encoding/bincount/Cast_1Cast#state_encoding/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
state_encoding/bincount/Const_1Const^state_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       �
state_encoding/bincount/MaxMax state_encoding/bincount/Cast:y:0(state_encoding/bincount/Const_1:output:0*
T0*
_output_shapes
: ~
state_encoding/bincount/add/yConst^state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
state_encoding/bincount/addAddV2$state_encoding/bincount/Max:output:0&state_encoding/bincount/add/y:output:0*
T0*
_output_shapes
: �
state_encoding/bincount/mulMul"state_encoding/bincount/Cast_1:y:0state_encoding/bincount/add:z:0*
T0*
_output_shapes
: �
!state_encoding/bincount/minlengthConst^state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
state_encoding/bincount/MaximumMaximum*state_encoding/bincount/minlength:output:0state_encoding/bincount/mul:z:0*
T0*
_output_shapes
: �
!state_encoding/bincount/maxlengthConst^state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
state_encoding/bincount/MinimumMinimum*state_encoding/bincount/maxlength:output:0#state_encoding/bincount/Maximum:z:0*
T0*
_output_shapes
: �
state_encoding/bincount/Const_2Const^state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
%state_encoding/bincount/DenseBincountDenseBincount state_encoding/bincount/Cast:y:0#state_encoding/bincount/Minimum:z:0(state_encoding/bincount/Const_2:output:0*

Tidx0*
T0*'
_output_shapes
:���������*
binary_output(^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   o
flatten/ReshapeReshapeinputs_0flatten/Const:output:0*
T0*(
_output_shapes
:����������Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate/concatConcatV2flatten/Reshape:output:0.state_encoding/bincount/DenseBincount:output:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:����������|
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
 batch_normalization/moments/meanMeanconcatenate/concat:output:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:	��
-batch_normalization/moments/SquaredDifferenceSquaredDifferenceconcatenate/concat:output:01batch_normalization/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 n
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0p
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0h
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�y
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:��
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
#batch_normalization/batchnorm/mul_1Mulconcatenate/concat:output:0%batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMul'batch_normalization/batchnorm/add_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������}
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs_05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*
ellipsis_mask*
shrink_axis_mask~
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"batch_normalization_1/moments/meanMeandense/BiasAdd:output:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:	��
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferencedense/BiasAdd:output:03batch_normalization_1/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 p
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�}
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
%batch_normalization_1/batchnorm/mul_1Muldense/BiasAdd:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#batch_normalization_1/batchnorm/subSub6batch_normalization_1/batchnorm/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
-policy_targets_unmasked/MatMul/ReadVariableOpReadVariableOp6policy_targets_unmasked_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
policy_targets_unmasked/MatMulMatMul)batch_normalization_1/batchnorm/add_1:z:05policy_targets_unmasked/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.policy_targets_unmasked/BiasAdd/ReadVariableOpReadVariableOp7policy_targets_unmasked_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
policy_targets_unmasked/BiasAddBiasAdd(policy_targets_unmasked/MatMul:product:06policy_targets_unmasked/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
policy_targets_unmasked/SoftmaxSoftmax(policy_targets_unmasked/BiasAdd:output:0*
T0*'
_output_shapes
:���������\
legals_mask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
legals_mask/ExpandDims
ExpandDims.state_encoding/bincount/DenseBincount:output:0#legals_mask/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������o
legals_mask/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
legals_mask/transpose	Transpose/tf.__operators__.getitem/strided_slice:output:0#legals_mask/transpose/perm:output:0*
T0*+
_output_shapes
:����������
legals_mask/MatMulBatchMatMulV2legals_mask/transpose:y:0legals_mask/ExpandDims:output:0*
T0*+
_output_shapes
:���������j
legals_mask/ShapeShapelegals_mask/MatMul:output:0*
T0*
_output_shapes
::���
legals_mask/SqueezeSqueezelegals_mask/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

����������
policy_targets/mulMul)policy_targets_unmasked/Softmax:softmax:0legals_mask/Squeeze:output:0*
T0*'
_output_shapes
:����������
#value_targets/MatMul/ReadVariableOpReadVariableOp,value_targets_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
value_targets/MatMulMatMul)batch_normalization_1/batchnorm/add_1:z:0+value_targets/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$value_targets/BiasAdd/ReadVariableOpReadVariableOp-value_targets_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
value_targets/BiasAddBiasAddvalue_targets/MatMul:product:0,value_targets/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
value_targets/TanhTanhvalue_targets/BiasAdd:output:0*
T0*'
_output_shapes
:����������
StatefulPartitionedCallStatefulPartitionedCall9batch_normalization_batchnorm_mul_readvariableop_resource5batch_normalization_batchnorm_readvariableop_resource$dense_matmul_readvariableop_resource%dense_biasadd_readvariableop_resource;batch_normalization_1_batchnorm_mul_readvariableop_resource7batch_normalization_1_batchnorm_readvariableop_resource6policy_targets_unmasked_matmul_readvariableop_resource7policy_targets_unmasked_biasadd_readvariableop_resource,value_targets_matmul_readvariableop_resource-value_targets_biasadd_readvariableop_resource*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *,
_read_only_resource_inputs

 	*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___759e
IdentityIdentityvalue_targets/Tanh:y:0^NoOp*
T0*'
_output_shapes
:���������g

Identity_1Identitypolicy_targets/mul:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^StatefulPartitionedCall$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp3^batch_normalization_1/batchnorm/mul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp/^policy_targets_unmasked/BiasAdd/ReadVariableOp.^policy_targets_unmasked/MatMul/ReadVariableOp^state_encoding/Assert/Assert%^value_targets/BiasAdd/ReadVariableOp$^value_targets/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2`
.policy_targets_unmasked/BiasAdd/ReadVariableOp.policy_targets_unmasked/BiasAdd/ReadVariableOp2^
-policy_targets_unmasked/MatMul/ReadVariableOp-policy_targets_unmasked/MatMul/ReadVariableOp2<
state_encoding/Assert/Assertstate_encoding/Assert/Assert2L
$value_targets/BiasAdd/ReadVariableOp$value_targets/BiasAdd/ReadVariableOp2J
#value_targets/MatMul/ReadVariableOp#value_targets/MatMul/ReadVariableOp:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
�
�
"__inference_mlp_layer_call_fn_1280
inputs_0
inputs_1
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:

unknown_11:	�

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_mlp_layer_call_and_return_conditional_losses_993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1:Y U
/
_output_shapes
:���������
"
_user_specified_name
inputs_0
�`
�
 __inference__traced_restore_2144
file_prefix9
*assignvariableop_batch_normalization_gamma:	�:
+assignvariableop_1_batch_normalization_beta:	�A
2assignvariableop_2_batch_normalization_moving_mean:	�E
6assignvariableop_3_batch_normalization_moving_variance:	�3
assignvariableop_4_dense_kernel:
��,
assignvariableop_5_dense_bias:	�=
.assignvariableop_6_batch_normalization_1_gamma:	�<
-assignvariableop_7_batch_normalization_1_beta:	�C
4assignvariableop_8_batch_normalization_1_moving_mean:	�G
8assignvariableop_9_batch_normalization_1_moving_variance:	�E
2assignvariableop_10_policy_targets_unmasked_kernel:	�>
0assignvariableop_11_policy_targets_unmasked_bias:;
(assignvariableop_12_value_targets_kernel:	�4
&assignvariableop_13_value_targets_bias:'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: %
assignvariableop_16_total_2: %
assignvariableop_17_count_2: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: #
assignvariableop_20_total: #
assignvariableop_21_count: 
identity_23��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp*assignvariableop_batch_normalization_gammaIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp+assignvariableop_1_batch_normalization_betaIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp2assignvariableop_2_batch_normalization_moving_meanIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp6assignvariableop_3_batch_normalization_moving_varianceIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp.assignvariableop_6_batch_normalization_1_gammaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp-assignvariableop_7_batch_normalization_1_betaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp4assignvariableop_8_batch_normalization_1_moving_meanIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp8assignvariableop_9_batch_normalization_1_moving_varianceIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp2assignvariableop_10_policy_targets_unmasked_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp0assignvariableop_11_policy_targets_unmasked_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_value_targets_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp&assignvariableop_13_value_targets_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_2Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_2Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
\
@__inference_reshape_layer_call_and_return_conditional_losses_573

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :u
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1697

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
__inference__wrapped_model_392
environment	
stateH
9mlp_batch_normalization_batchnorm_readvariableop_resource:	�L
=mlp_batch_normalization_batchnorm_mul_readvariableop_resource:	�J
;mlp_batch_normalization_batchnorm_readvariableop_1_resource:	�J
;mlp_batch_normalization_batchnorm_readvariableop_2_resource:	�<
(mlp_dense_matmul_readvariableop_resource:
��8
)mlp_dense_biasadd_readvariableop_resource:	�J
;mlp_batch_normalization_1_batchnorm_readvariableop_resource:	�N
?mlp_batch_normalization_1_batchnorm_mul_readvariableop_resource:	�L
=mlp_batch_normalization_1_batchnorm_readvariableop_1_resource:	�L
=mlp_batch_normalization_1_batchnorm_readvariableop_2_resource:	�M
:mlp_policy_targets_unmasked_matmul_readvariableop_resource:	�I
;mlp_policy_targets_unmasked_biasadd_readvariableop_resource:C
0mlp_value_targets_matmul_readvariableop_resource:	�?
1mlp_value_targets_biasadd_readvariableop_resource:
identity

identity_1��0mlp/batch_normalization/batchnorm/ReadVariableOp�2mlp/batch_normalization/batchnorm/ReadVariableOp_1�2mlp/batch_normalization/batchnorm/ReadVariableOp_2�4mlp/batch_normalization/batchnorm/mul/ReadVariableOp�2mlp/batch_normalization_1/batchnorm/ReadVariableOp�4mlp/batch_normalization_1/batchnorm/ReadVariableOp_1�4mlp/batch_normalization_1/batchnorm/ReadVariableOp_2�6mlp/batch_normalization_1/batchnorm/mul/ReadVariableOp� mlp/dense/BiasAdd/ReadVariableOp�mlp/dense/MatMul/ReadVariableOp�2mlp/policy_targets_unmasked/BiasAdd/ReadVariableOp�1mlp/policy_targets_unmasked/MatMul/ReadVariableOp� mlp/state_encoding/Assert/Assert�(mlp/value_targets/BiasAdd/ReadVariableOp�'mlp/value_targets/MatMul/ReadVariableOpT
mlp/reshape/ShapeShapestate*
T0*
_output_shapes
::��i
mlp/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!mlp/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!mlp/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
mlp/reshape/strided_sliceStridedSlicemlp/reshape/Shape:output:0(mlp/reshape/strided_slice/stack:output:0*mlp/reshape/strided_slice/stack_1:output:0*mlp/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
mlp/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
mlp/reshape/Reshape/shapePack"mlp/reshape/strided_slice:output:0$mlp/reshape/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:{
mlp/reshape/ReshapeReshapestate"mlp/reshape/Reshape/shape:output:0*
T0*'
_output_shapes
:���������i
mlp/state_encoding/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
mlp/state_encoding/MaxMaxmlp/reshape/Reshape:output:0!mlp/state_encoding/Const:output:0*
T0*
_output_shapes
: k
mlp/state_encoding/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
mlp/state_encoding/MinMinmlp/reshape/Reshape:output:0#mlp/state_encoding/Const_1:output:0*
T0*
_output_shapes
: [
mlp/state_encoding/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
mlp/state_encoding/CastCast"mlp/state_encoding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
mlp/state_encoding/GreaterGreatermlp/state_encoding/Cast:y:0mlp/state_encoding/Max:output:0*
T0*
_output_shapes
: ]
mlp/state_encoding/Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : w
mlp/state_encoding/Cast_1Cast$mlp/state_encoding/Cast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
mlp/state_encoding/GreaterEqualGreaterEqualmlp/state_encoding/Min:output:0mlp/state_encoding/Cast_1:y:0*
T0*
_output_shapes
: �
mlp/state_encoding/LogicalAnd
LogicalAndmlp/state_encoding/Greater:z:0#mlp/state_encoding/GreaterEqual:z:0*
_output_shapes
: �
mlp/state_encoding/Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=20�
'mlp/state_encoding/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=20�
 mlp/state_encoding/Assert/AssertAssert!mlp/state_encoding/LogicalAnd:z:00mlp/state_encoding/Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 �
 mlp/state_encoding/bincount/CastCastmlp/reshape/Reshape:output:0!^mlp/state_encoding/Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:����������
!mlp/state_encoding/bincount/ShapeShape$mlp/state_encoding/bincount/Cast:y:0*
T0*
_output_shapes
::���
!mlp/state_encoding/bincount/ConstConst!^mlp/state_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB: �
 mlp/state_encoding/bincount/ProdProd*mlp/state_encoding/bincount/Shape:output:0*mlp/state_encoding/bincount/Const:output:0*
T0*
_output_shapes
: �
%mlp/state_encoding/bincount/Greater/yConst!^mlp/state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : �
#mlp/state_encoding/bincount/GreaterGreater)mlp/state_encoding/bincount/Prod:output:0.mlp/state_encoding/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
"mlp/state_encoding/bincount/Cast_1Cast'mlp/state_encoding/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
#mlp/state_encoding/bincount/Const_1Const!^mlp/state_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       �
mlp/state_encoding/bincount/MaxMax$mlp/state_encoding/bincount/Cast:y:0,mlp/state_encoding/bincount/Const_1:output:0*
T0*
_output_shapes
: �
!mlp/state_encoding/bincount/add/yConst!^mlp/state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
mlp/state_encoding/bincount/addAddV2(mlp/state_encoding/bincount/Max:output:0*mlp/state_encoding/bincount/add/y:output:0*
T0*
_output_shapes
: �
mlp/state_encoding/bincount/mulMul&mlp/state_encoding/bincount/Cast_1:y:0#mlp/state_encoding/bincount/add:z:0*
T0*
_output_shapes
: �
%mlp/state_encoding/bincount/minlengthConst!^mlp/state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
#mlp/state_encoding/bincount/MaximumMaximum.mlp/state_encoding/bincount/minlength:output:0#mlp/state_encoding/bincount/mul:z:0*
T0*
_output_shapes
: �
%mlp/state_encoding/bincount/maxlengthConst!^mlp/state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
#mlp/state_encoding/bincount/MinimumMinimum.mlp/state_encoding/bincount/maxlength:output:0'mlp/state_encoding/bincount/Maximum:z:0*
T0*
_output_shapes
: �
#mlp/state_encoding/bincount/Const_2Const!^mlp/state_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
)mlp/state_encoding/bincount/DenseBincountDenseBincount$mlp/state_encoding/bincount/Cast:y:0'mlp/state_encoding/bincount/Minimum:z:0,mlp/state_encoding/bincount/Const_2:output:0*

Tidx0*
T0*'
_output_shapes
:���������*
binary_output(b
mlp/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   z
mlp/flatten/ReshapeReshapeenvironmentmlp/flatten/Const:output:0*
T0*(
_output_shapes
:����������]
mlp/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
mlp/concatenate/concatConcatV2mlp/flatten/Reshape:output:02mlp/state_encoding/bincount/DenseBincount:output:0$mlp/concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
0mlp/batch_normalization/batchnorm/ReadVariableOpReadVariableOp9mlp_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0l
'mlp/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
%mlp/batch_normalization/batchnorm/addAddV28mlp/batch_normalization/batchnorm/ReadVariableOp:value:00mlp/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
'mlp/batch_normalization/batchnorm/RsqrtRsqrt)mlp/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:��
4mlp/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp=mlp_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%mlp/batch_normalization/batchnorm/mulMul+mlp/batch_normalization/batchnorm/Rsqrt:y:0<mlp/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
'mlp/batch_normalization/batchnorm/mul_1Mulmlp/concatenate/concat:output:0)mlp/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
2mlp/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp;mlp_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'mlp/batch_normalization/batchnorm/mul_2Mul:mlp/batch_normalization/batchnorm/ReadVariableOp_1:value:0)mlp/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
2mlp/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp;mlp_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
%mlp/batch_normalization/batchnorm/subSub:mlp/batch_normalization/batchnorm/ReadVariableOp_2:value:0+mlp/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
'mlp/batch_normalization/batchnorm/add_1AddV2+mlp/batch_normalization/batchnorm/mul_1:z:0)mlp/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
mlp/dense/MatMul/ReadVariableOpReadVariableOp(mlp_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
mlp/dense/MatMulMatMul+mlp/batch_normalization/batchnorm/add_1:z:0'mlp/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 mlp/dense/BiasAdd/ReadVariableOpReadVariableOp)mlp_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
mlp/dense/BiasAddBiasAddmlp/dense/MatMul:product:0(mlp/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0mlp/tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
2mlp/tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
2mlp/tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
*mlp/tf.__operators__.getitem/strided_sliceStridedSliceenvironment9mlp/tf.__operators__.getitem/strided_slice/stack:output:0;mlp/tf.__operators__.getitem/strided_slice/stack_1:output:0;mlp/tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*
ellipsis_mask*
shrink_axis_mask�
2mlp/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp;mlp_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0n
)mlp/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
'mlp/batch_normalization_1/batchnorm/addAddV2:mlp/batch_normalization_1/batchnorm/ReadVariableOp:value:02mlp/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
)mlp/batch_normalization_1/batchnorm/RsqrtRsqrt+mlp/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
6mlp/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp?mlp_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'mlp/batch_normalization_1/batchnorm/mulMul-mlp/batch_normalization_1/batchnorm/Rsqrt:y:0>mlp/batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
)mlp/batch_normalization_1/batchnorm/mul_1Mulmlp/dense/BiasAdd:output:0+mlp/batch_normalization_1/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
4mlp/batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp=mlp_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
)mlp/batch_normalization_1/batchnorm/mul_2Mul<mlp/batch_normalization_1/batchnorm/ReadVariableOp_1:value:0+mlp/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
4mlp/batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp=mlp_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
'mlp/batch_normalization_1/batchnorm/subSub<mlp/batch_normalization_1/batchnorm/ReadVariableOp_2:value:0-mlp/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
)mlp/batch_normalization_1/batchnorm/add_1AddV2-mlp/batch_normalization_1/batchnorm/mul_1:z:0+mlp/batch_normalization_1/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
1mlp/policy_targets_unmasked/MatMul/ReadVariableOpReadVariableOp:mlp_policy_targets_unmasked_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
"mlp/policy_targets_unmasked/MatMulMatMul-mlp/batch_normalization_1/batchnorm/add_1:z:09mlp/policy_targets_unmasked/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2mlp/policy_targets_unmasked/BiasAdd/ReadVariableOpReadVariableOp;mlp_policy_targets_unmasked_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#mlp/policy_targets_unmasked/BiasAddBiasAdd,mlp/policy_targets_unmasked/MatMul:product:0:mlp/policy_targets_unmasked/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#mlp/policy_targets_unmasked/SoftmaxSoftmax,mlp/policy_targets_unmasked/BiasAdd:output:0*
T0*'
_output_shapes
:���������`
mlp/legals_mask/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
mlp/legals_mask/ExpandDims
ExpandDims2mlp/state_encoding/bincount/DenseBincount:output:0'mlp/legals_mask/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������s
mlp/legals_mask/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
mlp/legals_mask/transpose	Transpose3mlp/tf.__operators__.getitem/strided_slice:output:0'mlp/legals_mask/transpose/perm:output:0*
T0*+
_output_shapes
:����������
mlp/legals_mask/MatMulBatchMatMulV2mlp/legals_mask/transpose:y:0#mlp/legals_mask/ExpandDims:output:0*
T0*+
_output_shapes
:���������r
mlp/legals_mask/ShapeShapemlp/legals_mask/MatMul:output:0*
T0*
_output_shapes
::���
mlp/legals_mask/SqueezeSqueezemlp/legals_mask/MatMul:output:0*
T0*'
_output_shapes
:���������*
squeeze_dims

����������
mlp/policy_targets/mulMul-mlp/policy_targets_unmasked/Softmax:softmax:0 mlp/legals_mask/Squeeze:output:0*
T0*'
_output_shapes
:����������
'mlp/value_targets/MatMul/ReadVariableOpReadVariableOp0mlp_value_targets_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
mlp/value_targets/MatMulMatMul-mlp/batch_normalization_1/batchnorm/add_1:z:0/mlp/value_targets/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(mlp/value_targets/BiasAdd/ReadVariableOpReadVariableOp1mlp_value_targets_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
mlp/value_targets/BiasAddBiasAdd"mlp/value_targets/MatMul:product:00mlp/value_targets/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
mlp/value_targets/TanhTanh"mlp/value_targets/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitymlp/policy_targets/mul:z:0^NoOp*
T0*'
_output_shapes
:���������k

Identity_1Identitymlp/value_targets/Tanh:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp1^mlp/batch_normalization/batchnorm/ReadVariableOp3^mlp/batch_normalization/batchnorm/ReadVariableOp_13^mlp/batch_normalization/batchnorm/ReadVariableOp_25^mlp/batch_normalization/batchnorm/mul/ReadVariableOp3^mlp/batch_normalization_1/batchnorm/ReadVariableOp5^mlp/batch_normalization_1/batchnorm/ReadVariableOp_15^mlp/batch_normalization_1/batchnorm/ReadVariableOp_27^mlp/batch_normalization_1/batchnorm/mul/ReadVariableOp!^mlp/dense/BiasAdd/ReadVariableOp ^mlp/dense/MatMul/ReadVariableOp3^mlp/policy_targets_unmasked/BiasAdd/ReadVariableOp2^mlp/policy_targets_unmasked/MatMul/ReadVariableOp!^mlp/state_encoding/Assert/Assert)^mlp/value_targets/BiasAdd/ReadVariableOp(^mlp/value_targets/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 2h
2mlp/batch_normalization/batchnorm/ReadVariableOp_12mlp/batch_normalization/batchnorm/ReadVariableOp_12h
2mlp/batch_normalization/batchnorm/ReadVariableOp_22mlp/batch_normalization/batchnorm/ReadVariableOp_22d
0mlp/batch_normalization/batchnorm/ReadVariableOp0mlp/batch_normalization/batchnorm/ReadVariableOp2l
4mlp/batch_normalization/batchnorm/mul/ReadVariableOp4mlp/batch_normalization/batchnorm/mul/ReadVariableOp2l
4mlp/batch_normalization_1/batchnorm/ReadVariableOp_14mlp/batch_normalization_1/batchnorm/ReadVariableOp_12l
4mlp/batch_normalization_1/batchnorm/ReadVariableOp_24mlp/batch_normalization_1/batchnorm/ReadVariableOp_22h
2mlp/batch_normalization_1/batchnorm/ReadVariableOp2mlp/batch_normalization_1/batchnorm/ReadVariableOp2p
6mlp/batch_normalization_1/batchnorm/mul/ReadVariableOp6mlp/batch_normalization_1/batchnorm/mul/ReadVariableOp2D
 mlp/dense/BiasAdd/ReadVariableOp mlp/dense/BiasAdd/ReadVariableOp2B
mlp/dense/MatMul/ReadVariableOpmlp/dense/MatMul/ReadVariableOp2h
2mlp/policy_targets_unmasked/BiasAdd/ReadVariableOp2mlp/policy_targets_unmasked/BiasAdd/ReadVariableOp2f
1mlp/policy_targets_unmasked/MatMul/ReadVariableOp1mlp/policy_targets_unmasked/MatMul/ReadVariableOp2D
 mlp/state_encoding/Assert/Assert mlp/state_encoding/Assert/Assert2T
(mlp/value_targets/BiasAdd/ReadVariableOp(mlp/value_targets/BiasAdd/ReadVariableOp2R
'mlp/value_targets/MatMul/ReadVariableOp'mlp/value_targets/MatMul/ReadVariableOp:NJ
'
_output_shapes
:���������

_user_specified_namestate:\ X
/
_output_shapes
:���������
%
_user_specified_nameenvironment
�
�
N__inference_batch_normalization_1_layer_call_and_return_conditional_losses_529

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_1911
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
	unknown_5:	�
	unknown_6:
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *,
_read_only_resource_inputs

 	*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___759^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall
�

�
G__inference_value_targets_layer_call_and_return_conditional_losses_1874

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
!__inference_mlp_layer_call_fn_930
environment	
state
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:

unknown_11:	�

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallenvironmentstateunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*,
_read_only_resource_inputs


*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_mlp_layer_call_and_return_conditional_losses_897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:���������:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:NJ
'
_output_shapes
:���������

_user_specified_namestate:\ X
/
_output_shapes
:���������
%
_user_specified_nameenvironment"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
environment<
serving_default_environment:0���������
7
state.
serving_default_state:0���������B
policy_targets0
StatefulPartitionedCall:0���������A
value_targets0
StatefulPartitionedCall:1���������tensorflow/serving/predict:ʖ
�
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

layer-9
layer_with_weights-3
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8axis
	9gamma
:beta
;moving_mean
<moving_variance"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance"
_tf_keras_layer
(
P	keras_api"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias"
_tf_keras_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias"
_tf_keras_layer
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
�
90
:1
;2
<3
C4
D5
L6
M7
N8
O9
W10
X11
e12
f13"
trackable_list_wrapper
f
90
:1
C2
D3
L4
M5
W6
X7
e8
f9"
trackable_list_wrapper
'
m0"
trackable_list_wrapper
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
strace_0
ttrace_1
utrace_2
vtrace_32�
!__inference_mlp_layer_call_fn_930
"__inference_mlp_layer_call_fn_1026
"__inference_mlp_layer_call_fn_1244
"__inference_mlp_layer_call_fn_1280�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zstrace_0zttrace_1zutrace_2zvtrace_3
�
wtrace_0
xtrace_1
ytrace_2
ztrace_32�
<__inference_mlp_layer_call_and_return_conditional_losses_773
<__inference_mlp_layer_call_and_return_conditional_losses_833
=__inference_mlp_layer_call_and_return_conditional_losses_1432
=__inference_mlp_layer_call_and_return_conditional_losses_1556�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0zxtrace_1zytrace_2zztrace_3
�B�
__inference__wrapped_model_392environmentstate"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
j
{
_variables
|_iterations
}_learning_rate
~_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
,
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_reshape_layer_call_fn_1561�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_reshape_layer_call_and_return_conditional_losses_1573�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_flatten_layer_call_fn_1578�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_flatten_layer_call_and_return_conditional_losses_1584�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_state_encoding_layer_call_fn_1589�
���
FullArgSpec&
args�
jinputs
jcount_weights
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_state_encoding_layer_call_and_return_conditional_losses_1624�
���
FullArgSpec&
args�
jinputs
jcount_weights
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_concatenate_layer_call_fn_1630�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_concatenate_layer_call_and_return_conditional_losses_1637�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
<
90
:1
;2
<3"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
2__inference_batch_normalization_layer_call_fn_1650
2__inference_batch_normalization_layer_call_fn_1663�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1697
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1717�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
(:&�2batch_normalization/gamma
':%�2batch_normalization/beta
0:.� (2batch_normalization/moving_mean
4:2� (2#batch_normalization/moving_variance
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
$__inference_dense_layer_call_fn_1726�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
?__inference_dense_layer_call_and_return_conditional_losses_1736�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :
��2dense/kernel
:�2
dense/bias
<
L0
M1
N2
O3"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
4__inference_batch_normalization_1_layer_call_fn_1749
4__inference_batch_normalization_1_layer_call_fn_1762�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1796
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1816�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(�2batch_normalization_1/gamma
):'�2batch_normalization_1/beta
2:0� (2!batch_normalization_1/moving_mean
6:4� (2%batch_normalization_1/moving_variance
"
_generic_user_object
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
6__inference_policy_targets_unmasked_layer_call_fn_1825�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
Q__inference_policy_targets_unmasked_layer_call_and_return_conditional_losses_1836�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
1:/	�2policy_targets_unmasked/kernel
*:(2policy_targets_unmasked/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_legals_mask_layer_call_fn_1842�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_legals_mask_layer_call_and_return_conditional_losses_1854�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_value_targets_layer_call_fn_1863�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_value_targets_layer_call_and_return_conditional_losses_1874�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':%	�2value_targets/kernel
 :2value_targets/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_policy_targets_layer_call_fn_1880�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_policy_targets_layer_call_and_return_conditional_losses_1886�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
__inference_loss_fn_0_1911�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
<
;0
<1
N2
O3"
trackable_list_wrapper
�
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
13"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
'
m0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
!__inference_mlp_layer_call_fn_930environmentstate"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_mlp_layer_call_fn_1026environmentstate"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_mlp_layer_call_fn_1244inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_mlp_layer_call_fn_1280inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
<__inference_mlp_layer_call_and_return_conditional_losses_773environmentstate"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
<__inference_mlp_layer_call_and_return_conditional_losses_833environmentstate"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
=__inference_mlp_layer_call_and_return_conditional_losses_1432inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
=__inference_mlp_layer_call_and_return_conditional_losses_1556inputs_0inputs_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
|0"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
"__inference_signature_wrapper_1208environmentstate"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
&__inference_reshape_layer_call_fn_1561inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_reshape_layer_call_and_return_conditional_losses_1573inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
&__inference_flatten_layer_call_fn_1578inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_flatten_layer_call_and_return_conditional_losses_1584inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_state_encoding_layer_call_fn_1589inputs"�
���
FullArgSpec&
args�
jinputs
jcount_weights
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_state_encoding_layer_call_and_return_conditional_losses_1624inputs"�
���
FullArgSpec&
args�
jinputs
jcount_weights
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_concatenate_layer_call_fn_1630inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_concatenate_layer_call_and_return_conditional_losses_1637inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_batch_normalization_layer_call_fn_1650inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
2__inference_batch_normalization_layer_call_fn_1663inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1697inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1717inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
$__inference_dense_layer_call_fn_1726inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
?__inference_dense_layer_call_and_return_conditional_losses_1736inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_batch_normalization_1_layer_call_fn_1749inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
4__inference_batch_normalization_1_layer_call_fn_1762inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1796inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1816inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
6__inference_policy_targets_unmasked_layer_call_fn_1825inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_policy_targets_unmasked_layer_call_and_return_conditional_losses_1836inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_legals_mask_layer_call_fn_1842inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_legals_mask_layer_call_and_return_conditional_losses_1854inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_value_targets_layer_call_fn_1863inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_value_targets_layer_call_and_return_conditional_losses_1874inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_policy_targets_layer_call_fn_1880inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_policy_targets_layer_call_and_return_conditional_losses_1886inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_1911"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count�
__inference__wrapped_model_392�<9;:CDOLNMWXefb�_
X�U
S�P
-�*
environment���������
�
state���������
� "y�v
:
policy_targets(�%
policy_targets���������
8
value_targets'�$
value_targets����������
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1796oNOLM8�5
.�+
!�
inputs����������
p

 
� "-�*
#� 
tensor_0����������
� �
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1816oOLNM8�5
.�+
!�
inputs����������
p 

 
� "-�*
#� 
tensor_0����������
� �
4__inference_batch_normalization_1_layer_call_fn_1749dNOLM8�5
.�+
!�
inputs����������
p

 
� ""�
unknown�����������
4__inference_batch_normalization_1_layer_call_fn_1762dOLNM8�5
.�+
!�
inputs����������
p 

 
� ""�
unknown�����������
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1697o;<9:8�5
.�+
!�
inputs����������
p

 
� "-�*
#� 
tensor_0����������
� �
M__inference_batch_normalization_layer_call_and_return_conditional_losses_1717o<9;:8�5
.�+
!�
inputs����������
p 

 
� "-�*
#� 
tensor_0����������
� �
2__inference_batch_normalization_layer_call_fn_1650d;<9:8�5
.�+
!�
inputs����������
p

 
� ""�
unknown�����������
2__inference_batch_normalization_layer_call_fn_1663d<9;:8�5
.�+
!�
inputs����������
p 

 
� ""�
unknown�����������
E__inference_concatenate_layer_call_and_return_conditional_losses_1637�[�X
Q�N
L�I
#� 
inputs_0����������
"�
inputs_1���������
� "-�*
#� 
tensor_0����������
� �
*__inference_concatenate_layer_call_fn_1630�[�X
Q�N
L�I
#� 
inputs_0����������
"�
inputs_1���������
� ""�
unknown�����������
?__inference_dense_layer_call_and_return_conditional_losses_1736eCD0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
$__inference_dense_layer_call_fn_1726ZCD0�-
&�#
!�
inputs����������
� ""�
unknown�����������
A__inference_flatten_layer_call_and_return_conditional_losses_1584h7�4
-�*
(�%
inputs���������
� "-�*
#� 
tensor_0����������
� �
&__inference_flatten_layer_call_fn_1578]7�4
-�*
(�%
inputs���������
� ""�
unknown�����������
E__inference_legals_mask_layer_call_and_return_conditional_losses_1854�^�[
T�Q
O�L
&�#
inputs_0���������
"�
inputs_1���������
� ",�)
"�
tensor_0���������
� �
*__inference_legals_mask_layer_call_fn_1842�^�[
T�Q
O�L
&�#
inputs_0���������
"�
inputs_1���������
� "!�
unknown���������K
__inference_loss_fn_0_1911-
9:CDLMWXef�

� 
� "�
unknown �
=__inference_mlp_layer_call_and_return_conditional_losses_1432�;<9:CDNOLMWXefj�g
`�]
S�P
*�'
inputs_0���������
"�
inputs_1���������
p

 
� "Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
=__inference_mlp_layer_call_and_return_conditional_losses_1556�<9;:CDOLNMWXefj�g
`�]
S�P
*�'
inputs_0���������
"�
inputs_1���������
p 

 
� "Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
<__inference_mlp_layer_call_and_return_conditional_losses_773�;<9:CDNOLMWXefj�g
`�]
S�P
-�*
environment���������
�
state���������
p

 
� "Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
<__inference_mlp_layer_call_and_return_conditional_losses_833�<9;:CDOLNMWXefj�g
`�]
S�P
-�*
environment���������
�
state���������
p 

 
� "Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
"__inference_mlp_layer_call_fn_1026�<9;:CDOLNMWXefj�g
`�]
S�P
-�*
environment���������
�
state���������
p 

 
� "K�H
"�
tensor_0���������
"�
tensor_1����������
"__inference_mlp_layer_call_fn_1244�;<9:CDNOLMWXefj�g
`�]
S�P
*�'
inputs_0���������
"�
inputs_1���������
p

 
� "K�H
"�
tensor_0���������
"�
tensor_1����������
"__inference_mlp_layer_call_fn_1280�<9;:CDOLNMWXefj�g
`�]
S�P
*�'
inputs_0���������
"�
inputs_1���������
p 

 
� "K�H
"�
tensor_0���������
"�
tensor_1����������
!__inference_mlp_layer_call_fn_930�;<9:CDNOLMWXefj�g
`�]
S�P
-�*
environment���������
�
state���������
p

 
� "K�H
"�
tensor_0���������
"�
tensor_1����������
H__inference_policy_targets_layer_call_and_return_conditional_losses_1886�Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� ",�)
"�
tensor_0���������
� �
-__inference_policy_targets_layer_call_fn_1880Z�W
P�M
K�H
"�
inputs_0���������
"�
inputs_1���������
� "!�
unknown����������
Q__inference_policy_targets_unmasked_layer_call_and_return_conditional_losses_1836dWX0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
6__inference_policy_targets_unmasked_layer_call_fn_1825YWX0�-
&�#
!�
inputs����������
� "!�
unknown����������
A__inference_reshape_layer_call_and_return_conditional_losses_1573_/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� ~
&__inference_reshape_layer_call_fn_1561T/�,
%�"
 �
inputs���������
� "!�
unknown����������
"__inference_signature_wrapper_1208�<9;:CDOLNMWXefu�r
� 
k�h
<
environment-�*
environment���������
(
state�
state���������"y�v
:
policy_targets(�%
policy_targets���������
8
value_targets'�$
value_targets����������
H__inference_state_encoding_layer_call_and_return_conditional_losses_1624c3�0
)�&
 �
inputs���������

 
� ",�)
"�
tensor_0���������
� �
-__inference_state_encoding_layer_call_fn_1589X3�0
)�&
 �
inputs���������

 
� "!�
unknown����������
G__inference_value_targets_layer_call_and_return_conditional_losses_1874def0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
,__inference_value_targets_layer_call_fn_1863Yef0�-
&�#
!�
inputs����������
� "!�
unknown���������