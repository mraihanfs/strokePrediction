??	
?&?%
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
?
AsString

input"T

output"
Ttype:
2
	
"
	precisionint?????????"

scientificbool( "
shortestbool( "
widthint?????????"
fillstring 
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
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
?
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 ?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
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
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
d
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*	2.5.0-rc32v2.5.0-rc2-14-gfcdf65934708??

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
?
global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
o
input_example_tensorPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_1Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_2Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_3Const*
_output_shapes
: *
dtype0*
valueB 
W
ParseExample/Const_4Const*
_output_shapes
: *
dtype0*
valueB 
d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 
?
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
:*
dtype0*T
valueKBIBResidence_typeBever_marriedBgenderBsmoking_statusB	work_type
?
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*M
valueDBBBageBavg_glucose_levelBbmiBheart_diseaseBhypertension
j
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 
?
ParseExample/ParseExampleV2ParseExampleV2input_example_tensor!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keysParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4*
Tdense	
2*?
_output_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????::::::?????????:?????????:?????????:?????????:?????????*0
dense_shapes 
:::::*

num_sparse*
ragged_split_types
 *
ragged_value_types
 *
sparse_types	
2
?
Flinear/linear_model/Residence_type_indicator/weights/Initializer/zerosConst*G
_class=
;9loc:@linear/linear_model/Residence_type_indicator/weights*
_output_shapes

:*
dtype0*
valueB*    
?
4linear/linear_model/Residence_type_indicator/weightsVarHandleOp*G
_class=
;9loc:@linear/linear_model/Residence_type_indicator/weights*
_output_shapes
: *
dtype0*
shape
:*E
shared_name64linear/linear_model/Residence_type_indicator/weights
?
Ulinear/linear_model/Residence_type_indicator/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp4linear/linear_model/Residence_type_indicator/weights*
_output_shapes
: 
?
;linear/linear_model/Residence_type_indicator/weights/AssignAssignVariableOp4linear/linear_model/Residence_type_indicator/weightsFlinear/linear_model/Residence_type_indicator/weights/Initializer/zeros*
dtype0
?
Hlinear/linear_model/Residence_type_indicator/weights/Read/ReadVariableOpReadVariableOp4linear/linear_model/Residence_type_indicator/weights*
_output_shapes

:*
dtype0
?
1linear/linear_model/age/weights/Initializer/zerosConst*2
_class(
&$loc:@linear/linear_model/age/weights*
_output_shapes

:*
dtype0*
valueB*    
?
linear/linear_model/age/weightsVarHandleOp*2
_class(
&$loc:@linear/linear_model/age/weights*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!linear/linear_model/age/weights
?
@linear/linear_model/age/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOplinear/linear_model/age/weights*
_output_shapes
: 
?
&linear/linear_model/age/weights/AssignAssignVariableOplinear/linear_model/age/weights1linear/linear_model/age/weights/Initializer/zeros*
dtype0
?
3linear/linear_model/age/weights/Read/ReadVariableOpReadVariableOplinear/linear_model/age/weights*
_output_shapes

:*
dtype0
?
?linear/linear_model/avg_glucose_level/weights/Initializer/zerosConst*@
_class6
42loc:@linear/linear_model/avg_glucose_level/weights*
_output_shapes

:*
dtype0*
valueB*    
?
-linear/linear_model/avg_glucose_level/weightsVarHandleOp*@
_class6
42loc:@linear/linear_model/avg_glucose_level/weights*
_output_shapes
: *
dtype0*
shape
:*>
shared_name/-linear/linear_model/avg_glucose_level/weights
?
Nlinear/linear_model/avg_glucose_level/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp-linear/linear_model/avg_glucose_level/weights*
_output_shapes
: 
?
4linear/linear_model/avg_glucose_level/weights/AssignAssignVariableOp-linear/linear_model/avg_glucose_level/weights?linear/linear_model/avg_glucose_level/weights/Initializer/zeros*
dtype0
?
Alinear/linear_model/avg_glucose_level/weights/Read/ReadVariableOpReadVariableOp-linear/linear_model/avg_glucose_level/weights*
_output_shapes

:*
dtype0
?
1linear/linear_model/bmi/weights/Initializer/zerosConst*2
_class(
&$loc:@linear/linear_model/bmi/weights*
_output_shapes

:*
dtype0*
valueB*    
?
linear/linear_model/bmi/weightsVarHandleOp*2
_class(
&$loc:@linear/linear_model/bmi/weights*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!linear/linear_model/bmi/weights
?
@linear/linear_model/bmi/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOplinear/linear_model/bmi/weights*
_output_shapes
: 
?
&linear/linear_model/bmi/weights/AssignAssignVariableOplinear/linear_model/bmi/weights1linear/linear_model/bmi/weights/Initializer/zeros*
dtype0
?
3linear/linear_model/bmi/weights/Read/ReadVariableOpReadVariableOplinear/linear_model/bmi/weights*
_output_shapes

:*
dtype0
?
Dlinear/linear_model/ever_married_indicator/weights/Initializer/zerosConst*E
_class;
97loc:@linear/linear_model/ever_married_indicator/weights*
_output_shapes

:*
dtype0*
valueB*    
?
2linear/linear_model/ever_married_indicator/weightsVarHandleOp*E
_class;
97loc:@linear/linear_model/ever_married_indicator/weights*
_output_shapes
: *
dtype0*
shape
:*C
shared_name42linear/linear_model/ever_married_indicator/weights
?
Slinear/linear_model/ever_married_indicator/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp2linear/linear_model/ever_married_indicator/weights*
_output_shapes
: 
?
9linear/linear_model/ever_married_indicator/weights/AssignAssignVariableOp2linear/linear_model/ever_married_indicator/weightsDlinear/linear_model/ever_married_indicator/weights/Initializer/zeros*
dtype0
?
Flinear/linear_model/ever_married_indicator/weights/Read/ReadVariableOpReadVariableOp2linear/linear_model/ever_married_indicator/weights*
_output_shapes

:*
dtype0
?
>linear/linear_model/gender_indicator/weights/Initializer/zerosConst*?
_class5
31loc:@linear/linear_model/gender_indicator/weights*
_output_shapes

:*
dtype0*
valueB*    
?
,linear/linear_model/gender_indicator/weightsVarHandleOp*?
_class5
31loc:@linear/linear_model/gender_indicator/weights*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,linear/linear_model/gender_indicator/weights
?
Mlinear/linear_model/gender_indicator/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp,linear/linear_model/gender_indicator/weights*
_output_shapes
: 
?
3linear/linear_model/gender_indicator/weights/AssignAssignVariableOp,linear/linear_model/gender_indicator/weights>linear/linear_model/gender_indicator/weights/Initializer/zeros*
dtype0
?
@linear/linear_model/gender_indicator/weights/Read/ReadVariableOpReadVariableOp,linear/linear_model/gender_indicator/weights*
_output_shapes

:*
dtype0
?
;linear/linear_model/heart_disease/weights/Initializer/zerosConst*<
_class2
0.loc:@linear/linear_model/heart_disease/weights*
_output_shapes

:*
dtype0*
valueB*    
?
)linear/linear_model/heart_disease/weightsVarHandleOp*<
_class2
0.loc:@linear/linear_model/heart_disease/weights*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)linear/linear_model/heart_disease/weights
?
Jlinear/linear_model/heart_disease/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp)linear/linear_model/heart_disease/weights*
_output_shapes
: 
?
0linear/linear_model/heart_disease/weights/AssignAssignVariableOp)linear/linear_model/heart_disease/weights;linear/linear_model/heart_disease/weights/Initializer/zeros*
dtype0
?
=linear/linear_model/heart_disease/weights/Read/ReadVariableOpReadVariableOp)linear/linear_model/heart_disease/weights*
_output_shapes

:*
dtype0
?
:linear/linear_model/hypertension/weights/Initializer/zerosConst*;
_class1
/-loc:@linear/linear_model/hypertension/weights*
_output_shapes

:*
dtype0*
valueB*    
?
(linear/linear_model/hypertension/weightsVarHandleOp*;
_class1
/-loc:@linear/linear_model/hypertension/weights*
_output_shapes
: *
dtype0*
shape
:*9
shared_name*(linear/linear_model/hypertension/weights
?
Ilinear/linear_model/hypertension/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp(linear/linear_model/hypertension/weights*
_output_shapes
: 
?
/linear/linear_model/hypertension/weights/AssignAssignVariableOp(linear/linear_model/hypertension/weights:linear/linear_model/hypertension/weights/Initializer/zeros*
dtype0
?
<linear/linear_model/hypertension/weights/Read/ReadVariableOpReadVariableOp(linear/linear_model/hypertension/weights*
_output_shapes

:*
dtype0
?
Flinear/linear_model/smoking_status_indicator/weights/Initializer/zerosConst*G
_class=
;9loc:@linear/linear_model/smoking_status_indicator/weights*
_output_shapes

:*
dtype0*
valueB*    
?
4linear/linear_model/smoking_status_indicator/weightsVarHandleOp*G
_class=
;9loc:@linear/linear_model/smoking_status_indicator/weights*
_output_shapes
: *
dtype0*
shape
:*E
shared_name64linear/linear_model/smoking_status_indicator/weights
?
Ulinear/linear_model/smoking_status_indicator/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp4linear/linear_model/smoking_status_indicator/weights*
_output_shapes
: 
?
;linear/linear_model/smoking_status_indicator/weights/AssignAssignVariableOp4linear/linear_model/smoking_status_indicator/weightsFlinear/linear_model/smoking_status_indicator/weights/Initializer/zeros*
dtype0
?
Hlinear/linear_model/smoking_status_indicator/weights/Read/ReadVariableOpReadVariableOp4linear/linear_model/smoking_status_indicator/weights*
_output_shapes

:*
dtype0
?
Alinear/linear_model/work_type_indicator/weights/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/work_type_indicator/weights*
_output_shapes

:*
dtype0*
valueB*    
?
/linear/linear_model/work_type_indicator/weightsVarHandleOp*B
_class8
64loc:@linear/linear_model/work_type_indicator/weights*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/linear/linear_model/work_type_indicator/weights
?
Plinear/linear_model/work_type_indicator/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/work_type_indicator/weights*
_output_shapes
: 
?
6linear/linear_model/work_type_indicator/weights/AssignAssignVariableOp/linear/linear_model/work_type_indicator/weightsAlinear/linear_model/work_type_indicator/weights/Initializer/zeros*
dtype0
?
Clinear/linear_model/work_type_indicator/weights/Read/ReadVariableOpReadVariableOp/linear/linear_model/work_type_indicator/weights*
_output_shapes

:*
dtype0
?
2linear/linear_model/bias_weights/Initializer/zerosConst*3
_class)
'%loc:@linear/linear_model/bias_weights*
_output_shapes
:*
dtype0*
valueB*    
?
 linear/linear_model/bias_weightsVarHandleOp*3
_class)
'%loc:@linear/linear_model/bias_weights*
_output_shapes
: *
dtype0*
shape:*1
shared_name" linear/linear_model/bias_weights
?
Alinear/linear_model/bias_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp linear/linear_model/bias_weights*
_output_shapes
: 
?
'linear/linear_model/bias_weights/AssignAssignVariableOp linear/linear_model/bias_weights2linear/linear_model/bias_weights/Initializer/zeros*
dtype0
?
4linear/linear_model/bias_weights/Read/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
?
plinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/ConstConst*
_output_shapes
:*
dtype0*!
valueBBUrbanBRural
?
olinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/SizeConst*
_output_shapes
: *
dtype0*
value	B :
?
vlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
?
vlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
plinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/rangeRangevlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/range/startolinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/Sizevlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/range/delta*
_output_shapes
:
?
olinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/CastCastplinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
?
{linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*@
shared_name1/hash_table_591caeff-0057-4080-a6e2-a0ead0a327b4*
value_dtype0	
?
?linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2?linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/hash_table/hash_tableplinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/Constolinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/Cast*	
Tin0*

Tout0	
?
xlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/hash_table/hash_tableParseExample/ParseExampleV2:5{linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
?
plinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/SparseToDenseSparseToDenseParseExample/ParseExampleV2ParseExample/ParseExampleV2:10xlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/hash_table_Lookup/LookupTableFindV2plinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/SparseToDense/default_value*
T0	*
Tindices0	*0
_output_shapes
:??????????????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
dlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
?
blinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
?
\linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/one_hotOneHotblinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/SparseToDenseblinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/one_hot/depthblinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/one_hot/Constdlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/one_hot/Const_1*
T0*4
_output_shapes"
 :??????????????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/SumSum\linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/one_hotjlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/ShapeShapeXlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Sum*
T0*
_output_shapes
:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
jlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
blinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/strided_sliceStridedSliceZlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Shapehlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/strided_slice/stackjlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/strided_slice/stack_1jlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
dlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
blinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Reshape/shapePackblinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/strided_slicedlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
\linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/ReshapeReshapeXlinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Sumblinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Reshape/shape*
T0*'
_output_shapes
:?????????
?
plinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/weighted_sum/ReadVariableOpReadVariableOp4linear/linear_model/Residence_type_indicator/weights*
_output_shapes

:*
dtype0
?
alinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/weighted_sumMatMul\linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Reshapeplinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Elinear/linear_model/linear/linear_model/linear/linear_model/age/ShapeShapeParseExample/ParseExampleV2:15*
T0*
_output_shapes
:
?
Slinear/linear_model/linear/linear_model/linear/linear_model/age/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/age/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/age/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Mlinear/linear_model/linear/linear_model/linear/linear_model/age/strided_sliceStridedSliceElinear/linear_model/linear/linear_model/linear/linear_model/age/ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/age/strided_slice/stackUlinear/linear_model/linear/linear_model/linear/linear_model/age/strided_slice/stack_1Ulinear/linear_model/linear/linear_model/linear/linear_model/age/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Olinear/linear_model/linear/linear_model/linear/linear_model/age/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Mlinear/linear_model/linear/linear_model/linear/linear_model/age/Reshape/shapePackMlinear/linear_model/linear/linear_model/linear/linear_model/age/strided_sliceOlinear/linear_model/linear/linear_model/linear/linear_model/age/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Glinear/linear_model/linear/linear_model/linear/linear_model/age/ReshapeReshapeParseExample/ParseExampleV2:15Mlinear/linear_model/linear/linear_model/linear/linear_model/age/Reshape/shape*
T0*'
_output_shapes
:?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/age/weighted_sum/ReadVariableOpReadVariableOplinear/linear_model/age/weights*
_output_shapes

:*
dtype0
?
Llinear/linear_model/linear/linear_model/linear/linear_model/age/weighted_sumMatMulGlinear/linear_model/linear/linear_model/linear/linear_model/age/Reshape[linear/linear_model/linear/linear_model/linear/linear_model/age/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Slinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/ShapeShapeParseExample/ParseExampleV2:16*
T0*
_output_shapes
:
?
alinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
clinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
clinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
[linear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/strided_sliceStridedSliceSlinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/Shapealinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/strided_slice/stackclinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/strided_slice/stack_1clinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
]linear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
[linear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/Reshape/shapePack[linear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/strided_slice]linear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/ReshapeReshapeParseExample/ParseExampleV2:16[linear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/Reshape/shape*
T0*'
_output_shapes
:?????????
?
ilinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/weighted_sum/ReadVariableOpReadVariableOp-linear/linear_model/avg_glucose_level/weights*
_output_shapes

:*
dtype0
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/weighted_sumMatMulUlinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/Reshapeilinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Elinear/linear_model/linear/linear_model/linear/linear_model/bmi/ShapeShapeParseExample/ParseExampleV2:17*
T0*
_output_shapes
:
?
Slinear/linear_model/linear/linear_model/linear/linear_model/bmi/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/bmi/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/bmi/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Mlinear/linear_model/linear/linear_model/linear/linear_model/bmi/strided_sliceStridedSliceElinear/linear_model/linear/linear_model/linear/linear_model/bmi/ShapeSlinear/linear_model/linear/linear_model/linear/linear_model/bmi/strided_slice/stackUlinear/linear_model/linear/linear_model/linear/linear_model/bmi/strided_slice/stack_1Ulinear/linear_model/linear/linear_model/linear/linear_model/bmi/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Olinear/linear_model/linear/linear_model/linear/linear_model/bmi/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Mlinear/linear_model/linear/linear_model/linear/linear_model/bmi/Reshape/shapePackMlinear/linear_model/linear/linear_model/linear/linear_model/bmi/strided_sliceOlinear/linear_model/linear/linear_model/linear/linear_model/bmi/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Glinear/linear_model/linear/linear_model/linear/linear_model/bmi/ReshapeReshapeParseExample/ParseExampleV2:17Mlinear/linear_model/linear/linear_model/linear/linear_model/bmi/Reshape/shape*
T0*'
_output_shapes
:?????????
?
[linear/linear_model/linear/linear_model/linear/linear_model/bmi/weighted_sum/ReadVariableOpReadVariableOplinear/linear_model/bmi/weights*
_output_shapes

:*
dtype0
?
Llinear/linear_model/linear/linear_model/linear/linear_model/bmi/weighted_sumMatMulGlinear/linear_model/linear/linear_model/linear/linear_model/bmi/Reshape[linear/linear_model/linear/linear_model/linear/linear_model/bmi/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
llinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/ConstConst*
_output_shapes
:*
dtype0*
valueBBYesBNo
?
klinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/SizeConst*
_output_shapes
: *
dtype0*
value	B :
?
rlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
?
rlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
llinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/rangeRangerlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/range/startklinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/Sizerlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/range/delta*
_output_shapes
:
?
klinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/CastCastllinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
?
wlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
|linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*@
shared_name1/hash_table_e17b60c5-fd18-4a02-8d77-5b49fd65a0a9*
value_dtype0	
?
?linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2|linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/hash_table/hash_tablellinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/Constklinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/Cast*	
Tin0*

Tout0	
?
vlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2|linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/hash_table/hash_tableParseExample/ParseExampleV2:6wlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
?
nlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/SparseToDenseSparseToDenseParseExample/ParseExampleV2:1ParseExample/ParseExampleV2:11vlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/hash_table_Lookup/LookupTableFindV2nlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/SparseToDense/default_value*
T0	*
Tindices0	*0
_output_shapes
:??????????????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
blinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
?
`linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/one_hotOneHot`linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/SparseToDense`linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/one_hot/depth`linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/one_hot/Constblinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/one_hot/Const_1*
T0*4
_output_shapes"
 :??????????????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/SumSumZlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/one_hothlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ShapeShapeVlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/Sum*
T0*
_output_shapes
:
?
flinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
hlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
`linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/strided_sliceStridedSliceXlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/Shapeflinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/strided_slice/stackhlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/strided_slice/stack_1hlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
blinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
`linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/Reshape/shapePack`linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/strided_sliceblinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ReshapeReshapeVlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/Sum`linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/Reshape/shape*
T0*'
_output_shapes
:?????????
?
nlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/weighted_sum/ReadVariableOpReadVariableOp2linear/linear_model/ever_married_indicator/weights*
_output_shapes

:*
dtype0
?
_linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/weighted_sumMatMulZlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/Reshapenlinear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
`linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/ConstConst*
_output_shapes
:*
dtype0*!
valueBBMaleBFemale
?
_linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/SizeConst*
_output_shapes
: *
dtype0*
value	B :
?
flinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
?
flinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
`linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/rangeRangeflinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/range/start_linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/Sizeflinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/range/delta*
_output_shapes
:
?
_linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/CastCast`linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
?
klinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
plinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*@
shared_name1/hash_table_22c2a613-02f2-45ec-873e-721e45d5f71c*
value_dtype0	
?
?linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2plinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/hash_table/hash_table`linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/Const_linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/Cast*	
Tin0*

Tout0	
?
plinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2plinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/hash_table/hash_tableParseExample/ParseExampleV2:7klinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/SparseToDenseSparseToDenseParseExample/ParseExampleV2:2ParseExample/ParseExampleV2:12plinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/hash_table_Lookup/LookupTableFindV2hlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/SparseToDense/default_value*
T0	*
Tindices0	*0
_output_shapes
:??????????????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
\linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/one_hotOneHotZlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/SparseToDenseZlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/one_hot/depthZlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/one_hot/Const\linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/one_hot/Const_1*
T0*4
_output_shapes"
 :??????????????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Plinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/SumSumTlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/one_hotblinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:?????????
?
Rlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/ShapeShapePlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/Sum*
T0*
_output_shapes
:
?
`linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
blinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
blinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/strided_sliceStridedSliceRlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/Shape`linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/strided_slice/stackblinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/strided_slice/stack_1blinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
\linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/Reshape/shapePackZlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/strided_slice\linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Tlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/ReshapeReshapePlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/SumZlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/Reshape/shape*
T0*'
_output_shapes
:?????????
?
hlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/weighted_sum/ReadVariableOpReadVariableOp,linear/linear_model/gender_indicator/weights*
_output_shapes

:*
dtype0
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/weighted_sumMatMulTlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/Reshapehlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Olinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/ShapeShapeParseExample/ParseExampleV2:18*
T0*
_output_shapes
:
?
]linear/linear_model/linear/linear_model/linear/linear_model/heart_disease/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
_linear/linear_model/linear/linear_model/linear/linear_model/heart_disease/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
_linear/linear_model/linear/linear_model/linear/linear_model/heart_disease/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/strided_sliceStridedSliceOlinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/Shape]linear/linear_model/linear/linear_model/linear/linear_model/heart_disease/strided_slice/stack_linear/linear_model/linear/linear_model/linear/linear_model/heart_disease/strided_slice/stack_1_linear/linear_model/linear/linear_model/linear/linear_model/heart_disease/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Ylinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/Reshape/shapePackWlinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/strided_sliceYlinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Qlinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/ReshapeReshapeParseExample/ParseExampleV2:18Wlinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/Reshape/shape*
T0*'
_output_shapes
:?????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/weighted_sum/ReadVariableOpReadVariableOp)linear/linear_model/heart_disease/weights*
_output_shapes

:*
dtype0
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/weighted_sumMatMulQlinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/Reshapeelinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Nlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/ShapeShapeParseExample/ParseExampleV2:19*
T0*
_output_shapes
:
?
\linear/linear_model/linear/linear_model/linear/linear_model/hypertension/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
^linear/linear_model/linear/linear_model/linear/linear_model/hypertension/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
^linear/linear_model/linear/linear_model/linear/linear_model/hypertension/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/strided_sliceStridedSliceNlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/Shape\linear/linear_model/linear/linear_model/linear/linear_model/hypertension/strided_slice/stack^linear/linear_model/linear/linear_model/linear/linear_model/hypertension/strided_slice/stack_1^linear/linear_model/linear/linear_model/linear/linear_model/hypertension/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
Vlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/Reshape/shapePackVlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/strided_sliceXlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Plinear/linear_model/linear/linear_model/linear/linear_model/hypertension/ReshapeReshapeParseExample/ParseExampleV2:19Vlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/Reshape/shape*
T0*'
_output_shapes
:?????????
?
dlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/weighted_sum/ReadVariableOpReadVariableOp(linear/linear_model/hypertension/weights*
_output_shapes

:*
dtype0
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/hypertension/weighted_sumMatMulPlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/Reshapedlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
plinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/ConstConst*
_output_shapes
:*
dtype0*C
value:B8Bformerly smokedBnever smokedBUnknownBsmokes
?
olinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/SizeConst*
_output_shapes
: *
dtype0*
value	B :
?
vlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
?
vlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
plinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/rangeRangevlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/range/startolinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/Sizevlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/range/delta*
_output_shapes
:
?
olinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/CastCastplinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
?
{linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*@
shared_name1/hash_table_32ac54df-9398-4805-98da-3f151da62622*
value_dtype0	
?
?linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2?linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/hash_table/hash_tableplinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/Constolinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/Cast*	
Tin0*

Tout0	
?
xlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/hash_table/hash_tableParseExample/ParseExampleV2:8{linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
?
plinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/SparseToDenseSparseToDenseParseExample/ParseExampleV2:3ParseExample/ParseExampleV2:13xlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/hash_table_Lookup/LookupTableFindV2plinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/SparseToDense/default_value*
T0	*
Tindices0	*0
_output_shapes
:??????????????????
?
blinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
dlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
?
blinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
?
\linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/one_hotOneHotblinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/SparseToDenseblinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/one_hot/depthblinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/one_hot/Constdlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/one_hot/Const_1*
T0*4
_output_shapes"
 :??????????????????
?
jlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Xlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/SumSum\linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/one_hotjlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:?????????
?
Zlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/ShapeShapeXlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/Sum*
T0*
_output_shapes
:
?
hlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
jlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
jlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
blinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/strided_sliceStridedSliceZlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/Shapehlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/strided_slice/stackjlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/strided_slice/stack_1jlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
dlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
blinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/Reshape/shapePackblinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/strided_slicedlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
\linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/ReshapeReshapeXlinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/Sumblinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/Reshape/shape*
T0*'
_output_shapes
:?????????
?
plinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/weighted_sum/ReadVariableOpReadVariableOp4linear/linear_model/smoking_status_indicator/weights*
_output_shapes

:*
dtype0
?
alinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/weighted_sumMatMul\linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/Reshapeplinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
flinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/ConstConst*
_output_shapes
:*
dtype0*M
valueDBBBSelf-employedBPrivateBchildrenBGovt_jobBNever_worked
?
elinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/SizeConst*
_output_shapes
: *
dtype0*
value	B :
?
llinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
?
llinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
flinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/rangeRangellinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/range/startelinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/Sizellinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/range/delta*
_output_shapes
:
?
elinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/CastCastflinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
?
qlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
vlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*@
shared_name1/hash_table_cdb6c093-99c4-4ec5-99f3-4921d24ad385*
value_dtype0	
?
?linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/hash_table/table_init/LookupTableImportV2LookupTableImportV2vlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/hash_table/hash_tableflinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/Constelinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/Cast*	
Tin0*

Tout0	
?
slinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2vlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/hash_table/hash_tableParseExample/ParseExampleV2:9qlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
]linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/SparseToDenseSparseToDenseParseExample/ParseExampleV2:4ParseExample/ParseExampleV2:14slinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/hash_table_Lookup/LookupTableFindV2klinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/SparseToDense/default_value*
T0	*
Tindices0	*0
_output_shapes
:??????????????????
?
]linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
_linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
?
]linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/one_hotOneHot]linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/SparseToDense]linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/one_hot/depth]linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/one_hot/Const_linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/one_hot/Const_1*
T0*4
_output_shapes"
 :??????????????????
?
elinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Slinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/SumSumWlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/one_hotelinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:?????????
?
Ulinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/ShapeShapeSlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/Sum*
T0*
_output_shapes
:
?
clinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
elinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
elinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
]linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/strided_sliceStridedSliceUlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/Shapeclinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/strided_slice/stackelinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/strided_slice/stack_1elinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
_linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
]linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/Reshape/shapePack]linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/strided_slice_linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/ReshapeReshapeSlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/Sum]linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/Reshape/shape*
T0*'
_output_shapes
:?????????
?
klinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/weighted_sum/ReadVariableOpReadVariableOp/linear/linear_model/work_type_indicator/weights*
_output_shapes

:*
dtype0
?
\linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/weighted_sumMatMulWlinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/Reshapeklinear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
?
Plinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasAddNalinear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/weighted_sumLlinear/linear_model/linear/linear_model/linear/linear_model/age/weighted_sumZlinear/linear_model/linear/linear_model/linear/linear_model/avg_glucose_level/weighted_sumLlinear/linear_model/linear/linear_model/linear/linear_model/bmi/weighted_sum_linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/weighted_sumYlinear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/weighted_sumVlinear/linear_model/linear/linear_model/linear/linear_model/heart_disease/weighted_sumUlinear/linear_model/linear/linear_model/linear/linear_model/hypertension/weighted_sumalinear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/weighted_sum\linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/weighted_sum*
N
*
T0*'
_output_shapes
:?????????
?
Wlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
?
Hlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sumBiasAddPlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum_no_biasWlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum/ReadVariableOp*
T0*'
_output_shapes
:?????????
k
ReadVariableOpReadVariableOp linear/linear_model/bias_weights*
_output_shapes
:*
dtype0
]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_sliceStridedSliceReadVariableOpstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
N
	bias/tagsConst*
_output_shapes
: *
dtype0*
valueB
 Bbias
P
biasScalarSummary	bias/tagsstrided_slice*
T0*
_output_shapes
: 
?
,zero_fraction/total_size/Size/ReadVariableOpReadVariableOp4linear/linear_model/Residence_type_indicator/weights*
_output_shapes

:*
dtype0
_
zero_fraction/total_size/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOplinear/linear_model/age/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_1Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp-linear/linear_model/avg_glucose_level/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_2Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOplinear/linear_model/bmi/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_3Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp2linear/linear_model/ever_married_indicator/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_4Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_5/ReadVariableOpReadVariableOp,linear/linear_model/gender_indicator/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_5Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_6/ReadVariableOpReadVariableOp)linear/linear_model/heart_disease/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_6Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_7/ReadVariableOpReadVariableOp(linear/linear_model/hypertension/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_7Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_8/ReadVariableOpReadVariableOp4linear/linear_model/smoking_status_indicator/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_8Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
.zero_fraction/total_size/Size_9/ReadVariableOpReadVariableOp/linear/linear_model/work_type_indicator/weights*
_output_shapes

:*
dtype0
a
zero_fraction/total_size/Size_9Const*
_output_shapes
: *
dtype0	*
value	B	 R
?
zero_fraction/total_size/AddNAddNzero_fraction/total_size/Sizezero_fraction/total_size/Size_1zero_fraction/total_size/Size_2zero_fraction/total_size/Size_3zero_fraction/total_size/Size_4zero_fraction/total_size/Size_5zero_fraction/total_size/Size_6zero_fraction/total_size/Size_7zero_fraction/total_size/Size_8zero_fraction/total_size/Size_9*
N
*
T0	*
_output_shapes
: 
`
zero_fraction/total_zero/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
zero_fraction/total_zero/EqualEqualzero_fraction/total_size/Sizezero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
?
#zero_fraction/total_zero/zero_countIfzero_fraction/total_zero/Equal4linear/linear_model/Residence_type_indicator/weightszero_fraction/total_size/Size*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*B
else_branch3R1
/zero_fraction_total_zero_zero_count_false_29811*
output_shapes
: *A
then_branch2R0
.zero_fraction_total_zero_zero_count_true_29810
~
,zero_fraction/total_zero/zero_count/IdentityIdentity#zero_fraction/total_zero/zero_count*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_1Equalzero_fraction/total_size/Size_1 zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_1If zero_fraction/total_zero/Equal_1linear/linear_model/age/weightszero_fraction/total_size/Size_1*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_1_false_29854*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_1_true_29853
?
.zero_fraction/total_zero/zero_count_1/IdentityIdentity%zero_fraction/total_zero/zero_count_1*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_2Equalzero_fraction/total_size/Size_2 zero_fraction/total_zero/Const_2*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_2If zero_fraction/total_zero/Equal_2-linear/linear_model/avg_glucose_level/weightszero_fraction/total_size/Size_2*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_2_false_29897*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_2_true_29896
?
.zero_fraction/total_zero/zero_count_2/IdentityIdentity%zero_fraction/total_zero/zero_count_2*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_3Equalzero_fraction/total_size/Size_3 zero_fraction/total_zero/Const_3*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_3If zero_fraction/total_zero/Equal_3linear/linear_model/bmi/weightszero_fraction/total_size/Size_3*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_3_false_29940*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_3_true_29939
?
.zero_fraction/total_zero/zero_count_3/IdentityIdentity%zero_fraction/total_zero/zero_count_3*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_4Equalzero_fraction/total_size/Size_4 zero_fraction/total_zero/Const_4*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_4If zero_fraction/total_zero/Equal_42linear/linear_model/ever_married_indicator/weightszero_fraction/total_size/Size_4*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_4_false_29983*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_4_true_29982
?
.zero_fraction/total_zero/zero_count_4/IdentityIdentity%zero_fraction/total_zero/zero_count_4*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_5Equalzero_fraction/total_size/Size_5 zero_fraction/total_zero/Const_5*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_5If zero_fraction/total_zero/Equal_5,linear/linear_model/gender_indicator/weightszero_fraction/total_size/Size_5*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_5_false_30026*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_5_true_30025
?
.zero_fraction/total_zero/zero_count_5/IdentityIdentity%zero_fraction/total_zero/zero_count_5*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_6Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_6Equalzero_fraction/total_size/Size_6 zero_fraction/total_zero/Const_6*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_6If zero_fraction/total_zero/Equal_6)linear/linear_model/heart_disease/weightszero_fraction/total_size/Size_6*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_6_false_30069*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_6_true_30068
?
.zero_fraction/total_zero/zero_count_6/IdentityIdentity%zero_fraction/total_zero/zero_count_6*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_7Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_7Equalzero_fraction/total_size/Size_7 zero_fraction/total_zero/Const_7*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_7If zero_fraction/total_zero/Equal_7(linear/linear_model/hypertension/weightszero_fraction/total_size/Size_7*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_7_false_30112*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_7_true_30111
?
.zero_fraction/total_zero/zero_count_7/IdentityIdentity%zero_fraction/total_zero/zero_count_7*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_8Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_8Equalzero_fraction/total_size/Size_8 zero_fraction/total_zero/Const_8*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_8If zero_fraction/total_zero/Equal_84linear/linear_model/smoking_status_indicator/weightszero_fraction/total_size/Size_8*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_8_false_30155*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_8_true_30154
?
.zero_fraction/total_zero/zero_count_8/IdentityIdentity%zero_fraction/total_zero/zero_count_8*
T0*
_output_shapes
: 
b
 zero_fraction/total_zero/Const_9Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?
 zero_fraction/total_zero/Equal_9Equalzero_fraction/total_size/Size_9 zero_fraction/total_zero/Const_9*
T0	*
_output_shapes
: 
?
%zero_fraction/total_zero/zero_count_9If zero_fraction/total_zero/Equal_9/linear/linear_model/work_type_indicator/weightszero_fraction/total_size/Size_9*
Tcond0
*
Tin
2	*
Tout
2*
_lower_using_switch_merge(*
_output_shapes
: *#
_read_only_resource_inputs
*D
else_branch5R3
1zero_fraction_total_zero_zero_count_9_false_30198*
output_shapes
: *C
then_branch4R2
0zero_fraction_total_zero_zero_count_9_true_30197
?
.zero_fraction/total_zero/zero_count_9/IdentityIdentity%zero_fraction/total_zero/zero_count_9*
T0*
_output_shapes
: 
?
zero_fraction/total_zero/AddNAddN,zero_fraction/total_zero/zero_count/Identity.zero_fraction/total_zero/zero_count_1/Identity.zero_fraction/total_zero/zero_count_2/Identity.zero_fraction/total_zero/zero_count_3/Identity.zero_fraction/total_zero/zero_count_4/Identity.zero_fraction/total_zero/zero_count_5/Identity.zero_fraction/total_zero/zero_count_6/Identity.zero_fraction/total_zero/zero_count_7/Identity.zero_fraction/total_zero/zero_count_8/Identity.zero_fraction/total_zero/zero_count_9/Identity*
N
*
T0*
_output_shapes
: 
y
"zero_fraction/compute/float32_sizeCastzero_fraction/total_size/AddN*

DstT0*

SrcT0	*
_output_shapes
: 
?
zero_fraction/compute/truedivRealDivzero_fraction/total_zero/AddN"zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
n
"zero_fraction/zero_fraction_or_nanIdentityzero_fraction/compute/truediv*
T0*
_output_shapes
: 
v
fraction_of_zero_weights/tagsConst*
_output_shapes
: *
dtype0*)
value B Bfraction_of_zero_weights
?
fraction_of_zero_weightsScalarSummaryfraction_of_zero_weights/tags"zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 
?
head/logits/ShapeShapeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*
_output_shapes
:
g
%head/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
?
head/predictions/logisticSigmoidHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*'
_output_shapes
:?????????
?
head/predictions/zeros_like	ZerosLikeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*'
_output_shapes
:?????????
q
&head/predictions/two_class_logits/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum&head/predictions/two_class_logits/axis*
N*
T0*'
_output_shapes
:?????????
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:?????????
o
$head/predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:?????????
j
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:?????????
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
T0	*'
_output_shapes
:?????????
?
head/predictions/ShapeShapeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*
_output_shapes
:
n
$head/predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
p
&head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
^
head/predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
^
head/predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
^
head/predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
c
!head/predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
N*
T0*
_output_shapes
:
?
head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*
T0*'
_output_shapes
:?????????
?
head/predictions/Shape_1ShapeHlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum*
T0*
_output_shapes
:
p
&head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
`
head/predictions/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
`
head/predictions/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
`
head/predictions/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
?
head/predictions/range_1Rangehead/predictions/range_1/starthead/predictions/range_1/limithead/predictions/range_1/delta*
_output_shapes
:
d
head/predictions/AsStringAsStringhead/predictions/range_1*
T0*
_output_shapes
:
c
!head/predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
head/predictions/ExpandDims_2
ExpandDimshead/predictions/AsString!head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
e
#head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
?
!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:
?
head/predictions/Tile_1Tilehead/predictions/ExpandDims_2!head/predictions/Tile_1/multiples*
T0*'
_output_shapes
:?????????
X

head/ShapeShapehead/predictions/probabilities*
T0*
_output_shapes
:
b
head/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
d
head/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
d
head/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
R
head/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
R
head/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
R
head/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
e

head/rangeRangehead/range/starthead/range/limithead/range/delta*
_output_shapes
:
J
head/AsStringAsString
head/range*
T0*
_output_shapes
:
U
head/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
j
head/ExpandDims
ExpandDimshead/AsStringhead/ExpandDims/dim*
T0*
_output_shapes

:
W
head/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
t
head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*
N*
T0*
_output_shapes
:
i
	head/TileTilehead/ExpandDimshead/Tile/multiples*
T0*'
_output_shapes
:?????????

initNoOp
?
init_all_tablesNoOp?^linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/hash_table/table_init/LookupTableImportV2?^linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/hash_table/table_init/LookupTableImportV2?^linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/hash_table/table_init/LookupTableImportV2?^linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/hash_table/table_init/LookupTableImportV2?^linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/hash_table/table_init/LookupTableImportV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp\part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bglobal_stepB4linear/linear_model/Residence_type_indicator/weightsBlinear/linear_model/age/weightsB-linear/linear_model/avg_glucose_level/weightsB linear/linear_model/bias_weightsBlinear/linear_model/bmi/weightsB2linear/linear_model/ever_married_indicator/weightsB,linear/linear_model/gender_indicator/weightsB)linear/linear_model/heart_disease/weightsB(linear/linear_model/hypertension/weightsB4linear/linear_model/smoking_status_indicator/weightsB/linear/linear_model/work_type_indicator/weights
?
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step/Read/ReadVariableOpHlinear/linear_model/Residence_type_indicator/weights/Read/ReadVariableOp3linear/linear_model/age/weights/Read/ReadVariableOpAlinear/linear_model/avg_glucose_level/weights/Read/ReadVariableOp4linear/linear_model/bias_weights/Read/ReadVariableOp3linear/linear_model/bmi/weights/Read/ReadVariableOpFlinear/linear_model/ever_married_indicator/weights/Read/ReadVariableOp@linear/linear_model/gender_indicator/weights/Read/ReadVariableOp=linear/linear_model/heart_disease/weights/Read/ReadVariableOp<linear/linear_model/hypertension/weights/Read/ReadVariableOpHlinear/linear_model/smoking_status_indicator/weights/Read/ReadVariableOpClinear/linear_model/work_type_indicator/weights/Read/ReadVariableOp"/device:CPU:0*
dtypes
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bglobal_stepB4linear/linear_model/Residence_type_indicator/weightsBlinear/linear_model/age/weightsB-linear/linear_model/avg_glucose_level/weightsB linear/linear_model/bias_weightsBlinear/linear_model/bmi/weightsB2linear/linear_model/ever_married_indicator/weightsB,linear/linear_model/gender_indicator/weightsB)linear/linear_model/heart_disease/weightsB(linear/linear_model/hypertension/weightsB4linear/linear_model/smoking_status_indicator/weightsB/linear/linear_model/work_type_indicator/weights
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2	
N
save/Identity_1Identitysave/RestoreV2*
T0	*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpglobal_stepsave/Identity_1*
dtype0	
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:

save/AssignVariableOp_1AssignVariableOp4linear/linear_model/Residence_type_indicator/weightssave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
j
save/AssignVariableOp_2AssignVariableOplinear/linear_model/age/weightssave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
x
save/AssignVariableOp_3AssignVariableOp-linear/linear_model/avg_glucose_level/weightssave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
k
save/AssignVariableOp_4AssignVariableOp linear/linear_model/bias_weightssave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
j
save/AssignVariableOp_5AssignVariableOplinear/linear_model/bmi/weightssave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
}
save/AssignVariableOp_6AssignVariableOp2linear/linear_model/ever_married_indicator/weightssave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
w
save/AssignVariableOp_7AssignVariableOp,linear/linear_model/gender_indicator/weightssave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
t
save/AssignVariableOp_8AssignVariableOp)linear/linear_model/heart_disease/weightssave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
t
save/AssignVariableOp_9AssignVariableOp(linear/linear_model/hypertension/weightssave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
?
save/AssignVariableOp_10AssignVariableOp4linear/linear_model/smoking_status_indicator/weightssave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
|
save/AssignVariableOp_11AssignVariableOp/linear/linear_model/work_type_indicator/weightssave/Identity_12*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard??
?
_
.zero_fraction_total_zero_zero_count_true_29810
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_4_true_29982
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_298637
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_300357
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
1zero_fraction_total_zero_zero_count_3_false_29940N
<zero_fraction_readvariableop_linear_linear_model_bmi_weights:(
$cast_zero_fraction_total_size_size_3	
mul??
zero_fraction/ReadVariableOpReadVariableOp<zero_fraction_readvariableop_linear_linear_model_bmi_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_29950*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_299492
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_3*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_302087
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_298207
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_299077
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_299507
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
1zero_fraction_total_zero_zero_count_5_false_30026[
Izero_fraction_readvariableop_linear_linear_model_gender_indicator_weights:(
$cast_zero_fraction_total_size_size_5	
mul??
zero_fraction/ReadVariableOpReadVariableOpIzero_fraction_readvariableop_linear_linear_model_gender_indicator_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_30036*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_300352
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_5*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_301647
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_5_true_30025
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_6_true_30068
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_2_false_29897\
Jzero_fraction_readvariableop_linear_linear_model_avg_glucose_level_weights:(
$cast_zero_fraction_total_size_size_2	
mul??
zero_fraction/ReadVariableOpReadVariableOpJzero_fraction_readvariableop_linear_linear_model_avg_glucose_level_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_29907*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_299062
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_2*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_299927
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_300367
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_7_true_30111
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_7_false_30112W
Ezero_fraction_readvariableop_linear_linear_model_hypertension_weights:(
$cast_zero_fraction_total_size_size_7	
mul??
zero_fraction/ReadVariableOpReadVariableOpEzero_fraction_readvariableop_linear_linear_model_hypertension_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_30122*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_301212
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_7*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_8_true_30154
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_298217
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_1_true_29853
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_298647
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
/zero_fraction_total_zero_zero_count_false_29811c
Qzero_fraction_readvariableop_linear_linear_model_residence_type_indicator_weights:&
"cast_zero_fraction_total_size_size	
mul??
zero_fraction/ReadVariableOpReadVariableOpQzero_fraction_readvariableop_linear_linear_model_residence_type_indicator_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_29821*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_298202
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionh
CastCast"cast_zero_fraction_total_size_size*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_300787
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
1zero_fraction_total_zero_zero_count_9_false_30198^
Lzero_fraction_readvariableop_linear_linear_model_work_type_indicator_weights:(
$cast_zero_fraction_total_size_size_9	
mul??
zero_fraction/ReadVariableOpReadVariableOpLzero_fraction_readvariableop_linear_linear_model_work_type_indicator_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_30208*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_302072
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_9*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
?
1zero_fraction_total_zero_zero_count_1_false_29854N
<zero_fraction_readvariableop_linear_linear_model_age_weights:(
$cast_zero_fraction_total_size_size_1	
mul??
zero_fraction/ReadVariableOpReadVariableOp<zero_fraction_readvariableop_linear_linear_model_age_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_29864*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_298632
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_1*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_299067
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_301217
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
b
zero_fraction_cond_true_299497
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
a
0zero_fraction_total_zero_zero_count_3_true_29939
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_301657
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_299937
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
z
zero_fraction_cond_false_301227
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
1zero_fraction_total_zero_zero_count_6_false_30069X
Fzero_fraction_readvariableop_linear_linear_model_heart_disease_weights:(
$cast_zero_fraction_total_size_size_6	
mul??
zero_fraction/ReadVariableOpReadVariableOpFzero_fraction_readvariableop_linear_linear_model_heart_disease_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_30079*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_300782
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_6*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_9_true_30197
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
a
0zero_fraction_total_zero_zero_count_2_true_29896
placeholder
placeholder_1		
constS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Const"
constConst:output:0*
_input_shapes
: : :

_output_shapes
: 
?
b
zero_fraction_cond_true_302077
3count_nonzero_notequal_zero_fraction_readvariableop
cast	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast"
castCast:y:0*
_input_shapes

::$  

_output_shapes

:
?
?
1zero_fraction_total_zero_zero_count_8_false_30155c
Qzero_fraction_readvariableop_linear_linear_model_smoking_status_indicator_weights:(
$cast_zero_fraction_total_size_size_8	
mul??
zero_fraction/ReadVariableOpReadVariableOpQzero_fraction_readvariableop_linear_linear_model_smoking_status_indicator_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_30165*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_301642
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_8*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: 
?
z
zero_fraction_cond_false_300797
3count_nonzero_notequal_zero_fraction_readvariableop
count_nonzero_nonzero_count	o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zeros?
count_nonzero/NotEqualNotEqual3count_nonzero_notequal_zero_fraction_readvariableopcount_nonzero/zeros:output:0*
T0*
_output_shapes

:2
count_nonzero/NotEqual?
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*
_output_shapes

:2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const?
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0*
_input_shapes

::$  

_output_shapes

:
?
?
1zero_fraction_total_zero_zero_count_4_false_29983a
Ozero_fraction_readvariableop_linear_linear_model_ever_married_indicator_weights:(
$cast_zero_fraction_total_size_size_4	
mul??
zero_fraction/ReadVariableOpReadVariableOpOzero_fraction_readvariableop_linear_linear_model_ever_married_indicator_weights*
_output_shapes

:*
dtype02
zero_fraction/ReadVariableOpj
zero_fraction/SizeConst*
_output_shapes
: *
dtype0	*
value	B	 R2
zero_fraction/Size|
zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????2
zero_fraction/LessEqual/y?
zero_fraction/LessEqual	LessEqualzero_fraction/Size:output:0"zero_fraction/LessEqual/y:output:0*
T0	*
_output_shapes
: 2
zero_fraction/LessEqual?
zero_fraction/condStatelessIfzero_fraction/LessEqual:z:0$zero_fraction/ReadVariableOp:value:0*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *1
else_branch"R 
zero_fraction_cond_false_29993*
output_shapes
: *0
then_branch!R
zero_fraction_cond_true_299922
zero_fraction/cond?
zero_fraction/cond/IdentityIdentityzero_fraction/cond:output:0*
T0	*
_output_shapes
: 2
zero_fraction/cond/Identity?
$zero_fraction/counts_to_fraction/subSubzero_fraction/Size:output:0$zero_fraction/cond/Identity:output:0*
T0	*
_output_shapes
: 2&
$zero_fraction/counts_to_fraction/sub?
%zero_fraction/counts_to_fraction/CastCast(zero_fraction/counts_to_fraction/sub:z:0*

DstT0*

SrcT0	*
_output_shapes
: 2'
%zero_fraction/counts_to_fraction/Cast?
'zero_fraction/counts_to_fraction/Cast_1Castzero_fraction/Size:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2)
'zero_fraction/counts_to_fraction/Cast_1?
(zero_fraction/counts_to_fraction/truedivRealDiv)zero_fraction/counts_to_fraction/Cast:y:0+zero_fraction/counts_to_fraction/Cast_1:y:0*
T0*
_output_shapes
: 2*
(zero_fraction/counts_to_fraction/truediv?
zero_fraction/fractionIdentity,zero_fraction/counts_to_fraction/truediv:z:0*
T0*
_output_shapes
: 2
zero_fraction/fractionj
CastCast$cast_zero_fraction_total_size_size_4*

DstT0*

SrcT0	*
_output_shapes
: 2
CastG
mul_0Mulzero_fraction/fraction:output:0Cast:y:0*
T02
mul"
mul	mul_0:z:0*
_input_shapes
: : :

_output_shapes
: "?<
save/Const:0save/Identity:0save/restore_all (5 @F8"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"%
saved_model_main_op


group_deps"3
	summaries&
$
bias:0
fraction_of_zero_weights:0"?
table_initializer?
?
?linear/linear_model/linear/linear_model/linear/linear_model/Residence_type_indicator/Residence_type_lookup/hash_table/table_init/LookupTableImportV2
?linear/linear_model/linear/linear_model/linear/linear_model/ever_married_indicator/ever_married_lookup/hash_table/table_init/LookupTableImportV2
?linear/linear_model/linear/linear_model/linear/linear_model/gender_indicator/gender_lookup/hash_table/table_init/LookupTableImportV2
?linear/linear_model/linear/linear_model/linear/linear_model/smoking_status_indicator/smoking_status_lookup/hash_table/table_init/LookupTableImportV2
?linear/linear_model/linear/linear_model/linear/linear_model/work_type_indicator/work_type_lookup/hash_table/table_init/LookupTableImportV2"?
trainable_variables??
?
6linear/linear_model/Residence_type_indicator/weights:0;linear/linear_model/Residence_type_indicator/weights/AssignJlinear/linear_model/Residence_type_indicator/weights/Read/ReadVariableOp:0(2Hlinear/linear_model/Residence_type_indicator/weights/Initializer/zeros:08
?
!linear/linear_model/age/weights:0&linear/linear_model/age/weights/Assign5linear/linear_model/age/weights/Read/ReadVariableOp:0(23linear/linear_model/age/weights/Initializer/zeros:08
?
/linear/linear_model/avg_glucose_level/weights:04linear/linear_model/avg_glucose_level/weights/AssignClinear/linear_model/avg_glucose_level/weights/Read/ReadVariableOp:0(2Alinear/linear_model/avg_glucose_level/weights/Initializer/zeros:08
?
!linear/linear_model/bmi/weights:0&linear/linear_model/bmi/weights/Assign5linear/linear_model/bmi/weights/Read/ReadVariableOp:0(23linear/linear_model/bmi/weights/Initializer/zeros:08
?
4linear/linear_model/ever_married_indicator/weights:09linear/linear_model/ever_married_indicator/weights/AssignHlinear/linear_model/ever_married_indicator/weights/Read/ReadVariableOp:0(2Flinear/linear_model/ever_married_indicator/weights/Initializer/zeros:08
?
.linear/linear_model/gender_indicator/weights:03linear/linear_model/gender_indicator/weights/AssignBlinear/linear_model/gender_indicator/weights/Read/ReadVariableOp:0(2@linear/linear_model/gender_indicator/weights/Initializer/zeros:08
?
+linear/linear_model/heart_disease/weights:00linear/linear_model/heart_disease/weights/Assign?linear/linear_model/heart_disease/weights/Read/ReadVariableOp:0(2=linear/linear_model/heart_disease/weights/Initializer/zeros:08
?
*linear/linear_model/hypertension/weights:0/linear/linear_model/hypertension/weights/Assign>linear/linear_model/hypertension/weights/Read/ReadVariableOp:0(2<linear/linear_model/hypertension/weights/Initializer/zeros:08
?
6linear/linear_model/smoking_status_indicator/weights:0;linear/linear_model/smoking_status_indicator/weights/AssignJlinear/linear_model/smoking_status_indicator/weights/Read/ReadVariableOp:0(2Hlinear/linear_model/smoking_status_indicator/weights/Initializer/zeros:08
?
1linear/linear_model/work_type_indicator/weights:06linear/linear_model/work_type_indicator/weights/AssignElinear/linear_model/work_type_indicator/weights/Read/ReadVariableOp:0(2Clinear/linear_model/work_type_indicator/weights/Initializer/zeros:08
?
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08"?
	variables??
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
?
6linear/linear_model/Residence_type_indicator/weights:0;linear/linear_model/Residence_type_indicator/weights/AssignJlinear/linear_model/Residence_type_indicator/weights/Read/ReadVariableOp:0(2Hlinear/linear_model/Residence_type_indicator/weights/Initializer/zeros:08
?
!linear/linear_model/age/weights:0&linear/linear_model/age/weights/Assign5linear/linear_model/age/weights/Read/ReadVariableOp:0(23linear/linear_model/age/weights/Initializer/zeros:08
?
/linear/linear_model/avg_glucose_level/weights:04linear/linear_model/avg_glucose_level/weights/AssignClinear/linear_model/avg_glucose_level/weights/Read/ReadVariableOp:0(2Alinear/linear_model/avg_glucose_level/weights/Initializer/zeros:08
?
!linear/linear_model/bmi/weights:0&linear/linear_model/bmi/weights/Assign5linear/linear_model/bmi/weights/Read/ReadVariableOp:0(23linear/linear_model/bmi/weights/Initializer/zeros:08
?
4linear/linear_model/ever_married_indicator/weights:09linear/linear_model/ever_married_indicator/weights/AssignHlinear/linear_model/ever_married_indicator/weights/Read/ReadVariableOp:0(2Flinear/linear_model/ever_married_indicator/weights/Initializer/zeros:08
?
.linear/linear_model/gender_indicator/weights:03linear/linear_model/gender_indicator/weights/AssignBlinear/linear_model/gender_indicator/weights/Read/ReadVariableOp:0(2@linear/linear_model/gender_indicator/weights/Initializer/zeros:08
?
+linear/linear_model/heart_disease/weights:00linear/linear_model/heart_disease/weights/Assign?linear/linear_model/heart_disease/weights/Read/ReadVariableOp:0(2=linear/linear_model/heart_disease/weights/Initializer/zeros:08
?
*linear/linear_model/hypertension/weights:0/linear/linear_model/hypertension/weights/Assign>linear/linear_model/hypertension/weights/Read/ReadVariableOp:0(2<linear/linear_model/hypertension/weights/Initializer/zeros:08
?
6linear/linear_model/smoking_status_indicator/weights:0;linear/linear_model/smoking_status_indicator/weights/AssignJlinear/linear_model/smoking_status_indicator/weights/Read/ReadVariableOp:0(2Hlinear/linear_model/smoking_status_indicator/weights/Initializer/zeros:08
?
1linear/linear_model/work_type_indicator/weights:06linear/linear_model/work_type_indicator/weights/AssignElinear/linear_model/work_type_indicator/weights/Read/ReadVariableOp:0(2Clinear/linear_model/work_type_indicator/weights/Initializer/zeros:08
?
"linear/linear_model/bias_weights:0'linear/linear_model/bias_weights/Assign6linear/linear_model/bias_weights/Read/ReadVariableOp:0(24linear/linear_model/bias_weights/Initializer/zeros:08*?
classification?
3
inputs)
input_example_tensor:0?????????-
classes"
head/Tile:0?????????A
scores7
 head/predictions/probabilities:0?????????tensorflow/serving/classify*?
predict?
5
examples)
input_example_tensor:0??????????
all_class_ids.
head/predictions/Tile:0??????????
all_classes0
head/predictions/Tile_1:0?????????A
	class_ids4
head/predictions/ExpandDims:0	?????????@
classes5
head/predictions/str_classes:0?????????>
logistic2
head/predictions/logistic:0?????????k
logitsa
Jlinear/linear_model/linear/linear_model/linear/linear_model/weighted_sum:0?????????H
probabilities7
 head/predictions/probabilities:0?????????tensorflow/serving/predict*?

regression?
3
inputs)
input_example_tensor:0?????????=
outputs2
head/predictions/logistic:0?????????tensorflow/serving/regress*?
serving_default?
3
inputs)
input_example_tensor:0?????????-
classes"
head/Tile:0?????????A
scores7
 head/predictions/probabilities:0?????????tensorflow/serving/classify