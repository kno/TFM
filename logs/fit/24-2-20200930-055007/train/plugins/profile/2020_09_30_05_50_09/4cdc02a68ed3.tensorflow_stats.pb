"�T
VHostIDLE"IDLE(1��Mb���@9��3�
!�@A��Mb���@I��3�
!�@a=T�j��?i=T�j��?�Unknown
^HostGatherV2"GatherV2(1`��"��@9`��"��@A`��"��@I`��"��@ah"�D�?i�����C�?�Unknown
eHostCast"sequential_490/Cast(1���S��@9���S��@A���S��@I���S��@a�$��v��?iS-��%�?�Unknown
�HostResourceApplyAdam""Adam/Adam/update/ResourceApplyAdam(1��v���@9��v���@A��v���@I��v���@a��$m��?i���P��?�Unknown
�HostMatMul".gradient_tape/sequential_490/dense_1470/MatMul(1�(\��,�@9�(\��,�@A�(\��,�@I�(\��,�@aI6��2ʷ?iT�����?�Unknown
xHost_FusedMatMul"sequential_490/dense_1470/Relu(1����xs�@9����xs�@A����xs�@I����xs�@ar��mЌ�?i�֜���?�Unknown
�HostDataset"3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat(1��Q��_@9��Q��_@Aw��/E_@Iw��/E_@a�o(���?i2�>��j�?�Unknown
�HostResourceApplyAdam"$Adam/Adam/update_2/ResourceApplyAdam(1�C�l��S@9�C�l��S@A�C�l��S@I�C�l��S@as�!A}?iW�,�-��?�Unknown
q	HostDataset"Iterator::Model::ParallelMap(1��Q��>@9��Q��>@A��Q��>@I��Q��>@aa�)�f?iDq����?�Unknown
{
Host_FusedMatMul"!sequential_490/dense_1471/BiasAdd(1��ʡEv5@9��ʡEv5@A��ʡEv5@I��ʡEv5@an:��_?iJ{���?�Unknown
�HostResourceApplyAdam"$Adam/Adam/update_5/ResourceApplyAdam(1-���g1@9-���g1@A-���g1@I-���g1@a�:���Y?ig��[���?�Unknown
dHostDataset"Iterator::Model(1����x�G@9����x�G@ANbX9T0@INbX9T0@a�4�=X?i���z���?�Unknown
�Host#SparseSoftmaxCrossEntropyWithLogits"gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits(1!�rh��/@9!�rh��/@A!�rh��/@I!�rh��/@a�ۡ]�zW?io[K�M��?�Unknown
vHostSoftmax"!sequential_490/dense_1472/Softmax(1{�G�:/@9{�G�:/@A{�G�:/@I{�G�:/@ad��Og�V?iOZ����?�Unknown
�HostMatMul".gradient_tape/sequential_490/dense_1471/MatMul(1/�$��(@9/�$��(@A/�$��(@I/�$��(@a;���HCR?i��A:��?�Unknown
�HostMatMul"0gradient_tape/sequential_490/dense_1472/MatMul_1(1o���a(@9o���a(@Ao���a(@Io���a(@a�iF�0�Q?i�؂R��?�Unknown
`HostGatherV2"
GatherV2_1(1�ʡE��&@9�ʡE��&@A�ʡE��&@I�ʡE��&@a�ў�P?i4�G;�?�Unknown
�HostMatMul".gradient_tape/sequential_490/dense_1472/MatMul(1fffff�&@9fffff�&@Afffff�&@Ifffff�&@a�����P?i�}V��?�Unknown
�HostResourceApplyAdam"$Adam/Adam/update_1/ResourceApplyAdam(1o��ʡ&@9o��ʡ&@Ao��ʡ&@Io��ʡ&@a,+�f��P?i!m0��&�?�Unknown
�HostMatMul"0gradient_tape/sequential_490/dense_1471/MatMul_1(1��� �r&@9��� �r&@A��� �r&@I��� �r&@a
J9��P?i�	��"/�?�Unknown
�HostMul"Ugradient_tape/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/mul(1���S�$@9���S�$@A���S�$@I���S�$@a��T]q^N?i�^L\�6�?�Unknown
�HostResourceApplyAdam"$Adam/Adam/update_3/ResourceApplyAdam(1��~j��#@9��~j��#@A��~j��#@I��~j��#@aҶ֘�YM?i��2�>�?�Unknown
~HostAssignAddVariableOp"Adam/Adam/AssignAddVariableOp(1�p=
��#@9�p=
��#@A�p=
��#@I�p=
��#@a}�$�	AM?i��aE�?�Unknown
tHostAssignAddVariableOp"AssignAddVariableOp(1��Mb�#@9��Mb�@A��Mb�#@I��Mb�@a�k�/M?i����L�?�Unknown
�HostSum"1sparse_categorical_crossentropy/weighted_loss/Sum(1V-��#@9V-��#@AV-��#@IV-��#@a�b��L?i!Qi}�S�?�Unknown
�HostDataset"=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate(1��Mb,@9��Mb,@A\���(#@I\���(#@a��d�YL?iS*�S�Z�?�Unknown
{Host_FusedMatMul"!sequential_490/dense_1472/BiasAdd(1��Q��"@9��Q��"@A��Q��"@I��Q��"@a.�?U�K?i_&,)�a�?�Unknown
[HostAddV2"Adam/add(1����̌"@9����̌"@A����̌"@I����̌"@abJ|HK?i�8I�h�?�Unknown
�HostRandomUniform"?sequential_490/dropout_490/dropout/random_uniform/RandomUniform(1d;�O�W"@9d;�O�W"@Ad;�O�W"@Id;�O�W"@a�C9f.�J?iIǤ�ao�?�Unknown
lHostIteratorGetNext"IteratorGetNext(1j�t��!@9j�t��!@Aj�t��!@Ij�t��!@a;T��K�I?i��'�u�?�Unknown
�HostResourceApplyAdam"$Adam/Adam/update_4/ResourceApplyAdam(15^�I!@95^�I!@A5^�I!@I5^�I!@aB)[�I?i� !|�?�Unknown
o HostReadVariableOp"Adam/ReadVariableOp(1!�rh�� @9!�rh�� @A!�rh�� @I!�rh�� @a�P����H?i3%�
=��?�Unknown
�!HostStridedSlice"-sparse_categorical_crossentropy/strided_slice(1����� @9����� @A����� @I����� @a�Pٹ�aH?i��<�U��?�Unknown
Y"HostPow"Adam/Pow(1^�I+@9^�I+@A^�I+@I^�I+@af�=:��F?i�*y��?�Unknown
v#HostDataset"!Iterator::Model::ParallelMap::Zip(1�&1�Hc@9�&1�Hc@A����Mb@I����Mb@a��Di"XF?i#|�����?�Unknown
Z$HostArgMax"ArgMax(1�K7�A�@9�K7�A�@A�K7�A�@I�K7�A�@aιyd�E?i��~�$��?�Unknown
f%HostGreaterEqual"GreaterEqual(1+�Y@9+�Y@A+�Y@I+�Y@axĲy�E?iB�牞�?�Unknown
�&HostReluGrad"0gradient_tape/sequential_490/dense_1470/ReluGrad(1F����x@9F����x@AF����x@IF����x@aB���-�D?i?��ţ�?�Unknown
�'HostTile"Bgradient_tape/sparse_categorical_crossentropy/weighted_loss/Tile_1(1`��"��@9`��"��@A`��"��@I`��"��@a�>3_��A?iTcc.��?�Unknown
�(HostBiasAddGrad";gradient_tape/sequential_490/dense_1472/BiasAdd/BiasAddGrad(1����K@9����K@A����K@I����K@aBN��mR??i9�"���?�Unknown
�)HostBiasAddGrad";gradient_tape/sequential_490/dense_1470/BiasAdd/BiasAddGrad(1��(\�B@9��(\�B@A��(\�B@I��(\�B@a�E�Z�=?i�f<ү�?�Unknown
�*HostDataset"-Iterator::Model::ParallelMap::Zip[0]::FlatMap(1���Q�2@9���Q�2@A��x�&�@I��x�&�@a}��|�<?i���q��?�Unknown
�+HostCast"@ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_int64_Cast(1��v���@9��v���@A��v���@I��v���@a�o�_Z�<?i��G���?�Unknown
�,HostBiasAddGrad";gradient_tape/sequential_490/dense_1471/BiasAdd/BiasAddGrad(1;�O��n@9;�O��n@A;�O��n@I;�O��n@a�[zR��<?i�&2J���?�Unknown
�-HostDataset"MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice(1+����@9+����@A+����@I+����@ah��\m:?i�Z����?�Unknown
v.HostSigmoid"!sequential_490/dense_1471/Sigmoid(19��v��@99��v��@A9��v��@I9��v��@a�?�~��9?i�9�p)��?�Unknown
�/HostCast"?sparse_categorical_crossentropy/weighted_loss/num_elements/Cast(1j�t��@9j�t��@Aj�t��@Ij�t��@a�"Y��J8?ig�2��?�Unknown
�0HostGreaterEqual"/sequential_490/dropout_490/dropout/GreaterEqual(1J+�@9J+�@AJ+�@IJ+�@a�7���7?iS�]�'��?�Unknown
�1HostPack"/sparse_categorical_crossentropy/Reshape_1/shape(1�x�&1@9�x�&1@A�x�&1@I�x�&1@a�`��i�7?iߖ����?�Unknown
y2HostCast"'sequential_490/dropout_490/dropout/Cast(1㥛� �@9㥛� �@A㥛� �@I㥛� �@a0��]�6?i��N����?�Unknown
V3HostSum"Sum_1(1
ףp=
@9
ףp=
@A
ףp=
@I
ףp=
@a���[_6?ii:����?�Unknown
X4HostEqual"Equal(1�l����
@9�l����
@A�l����
@I�l����
@a����3?i�鶪)��?�Unknown
�5HostDivNoNan"Lgradient_tape/sparse_categorical_crossentropy/weighted_loss/value/div_no_nan(1���Mb
@9���Mb
@A���Mb
@I���Mb
@a�e�\�*3?i%�����?�Unknown
v6HostAssignAddVariableOp"AssignAddVariableOp_2(1�~j�t�	@9�~j�t�	@A�~j�t�	@I�~j�t�	@aF=�=��2?i�>�����?�Unknown
[7HostPow"
Adam/Pow_1(1��K7�@9��K7�@A��K7�@I��K7�@aPq��.2?i��J*��?�Unknown
X8HostCast"Cast_3(1����S@9����S@A����S@I����S@a���1?i��z�f��?�Unknown
t9HostReadVariableOp"Adam/Cast/ReadVariableOp(1��C�l@9��C�l@A��C�l@I��C�l@a,����91?i�h3���?�Unknown
�:HostCast"`sparse_categorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_int64_Cast(1X9��v@9X9��v@AX9��v@IX9��v@a�h���0?i\�����?�Unknown
];HostCast"Adam/Cast_1(1/�$�@9/�$�@A/�$�@I/�$�@a�l���/?i>hy����?�Unknown
�<HostDataset"?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor(1ˡE���@9ˡE����?AˡE���@IˡE����?ad��w��.?i�����?�Unknown
�=HostDivNoNan"3sparse_categorical_crossentropy/weighted_loss/value(1�n���@9�n���@A�n���@I�n���@a�ӝ�+?i���@��?�Unknown
b>HostDivNoNan"div_no_nan_1(1F����x@9F����x@AF����x@IF����x@a��!++?i5`ߠ���?�Unknown
v?HostAssignAddVariableOp"AssignAddVariableOp_1(1��MbX@9��MbX@A��MbX@I��MbX@aX�-��*?iV=�O���?�Unknown
w@HostMul"&sequential_490/dropout_490/dropout/Mul(1}?5^�I@9}?5^�I@A}?5^�I@I}?5^�I@ae4Y��*?i�g�Q��?�Unknown
`AHostDivNoNan"
div_no_nan(1T㥛� @9T㥛� @AT㥛� @IT㥛� @a���"1)?i�������?�Unknown
XBHostCast"Cast_4(1^�I+�?9^�I+�?A^�I+�?I^�I+�?a��c5s%?i<�;��?�Unknown
XCHostCast"Cast_5(1����x��?9����x��?A����x��?I����x��?a���}C%?imH"���?�Unknown
vDHostAssignAddVariableOp"AssignAddVariableOp_3(1B`��"��?9B`��"��?AB`��"��?IB`��"��?a	��5|$?iꗢ����?�Unknown
vEHostReadVariableOp"Adam/Cast_2/ReadVariableOp(1/�$���?9/�$���?A/�$���?I/�$���?a���z�"?i�iO���?�Unknown
jFHostReadVariableOp"ReadVariableOp(1��~j�t�?9��~j�t�?A��~j�t�?I��~j�t�?a���a�"?i�	ms0��?�Unknown
�GHostSigmoidGrad";gradient_tape/sequential_490/dense_1471/Sigmoid/SigmoidGrad(19��v���?99��v���?A9��v���?I9��v���?a3�᭿"?i�g/R��?�Unknown
�HHostMul"4gradient_tape/sequential_490/dropout_490/dropout/Mul(1�Q����?9�Q����?A�Q����?I�Q����?aS�t6�!?i�5Ϣk��?�Unknown
�IHostReadVariableOp"/sequential_490/dense_1471/MatMul/ReadVariableOp(1�� �rh�?9�� �rh�?A�� �rh�?I�� �rh�?aw|t��6!?iۼ���?�Unknown
yJHostReadVariableOp"div_no_nan_1/ReadVariableOp_1(1��v���?9��v���?A��v���?I��v���?a5g�� ?in.p���?�Unknown
�KHostMul"6gradient_tape/sequential_490/dropout_490/dropout/Mul_1(1333333�?9333333�?A333333�?I333333�?a���H.?i͞�[���?�Unknown
vLHostReadVariableOp"Adam/Cast_3/ReadVariableOp(1�I+��?9�I+��?A�I+��?I�I+��?a`ʅ�B1?i�J��y��?�Unknown
�MHostReadVariableOp"/sequential_490/dense_1472/MatMul/ReadVariableOp(1ffffff�?9ffffff�?Affffff�?Iffffff�?a�S�?i��N�i��?�Unknown
yNHostMul"(sequential_490/dropout_490/dropout/Mul_1(1���S��?9���S��?A���S��?I���S��?a�1�I@?i�y��S��?�Unknown
�OHostReadVariableOp"0sequential_490/dense_1471/BiasAdd/ReadVariableOp(1V-���?9V-���?AV-���?IV-���?a�b��?i叿:��?�Unknown
�PHostReadVariableOp"/sequential_490/dense_1470/MatMul/ReadVariableOp(1�$��C�?9�$��C�?A�$��C�?I�$��C�?a��X�UU?iԇ>j��?�Unknown
wQHostReadVariableOp"div_no_nan/ReadVariableOp_1(1�l�����?9�l�����?A�l�����?I�l�����?a_
���?i�.Q���?�Unknown
�RHostReadVariableOp"0sequential_490/dense_1472/BiasAdd/ReadVariableOp(1��n���?9��n���?A��n���?I��n���?ag)�;��?i=y����?�Unknown
�SHostReadVariableOp"0sequential_490/dense_1470/BiasAdd/ReadVariableOp(1X9��v�?9X9��v�?AX9��v�?IX9��v�?a�נ�(?iD�h6���?�Unknown
wTHostReadVariableOp"div_no_nan_1/ReadVariableOp(1�����M�?9�����M�?A�����M�?I�����M�?a7/U�I?i�B�~d��?�Unknown
uUHostReadVariableOp"div_no_nan/ReadVariableOp(1;�O��n�?9;�O��n�?A;�O��n�?I;�O��n�?a(� p?i�������?�Unknown*�S
^HostGatherV2"GatherV2(1`��"��@9`��"��@A`��"��@I`��"��@a�)�`X�?i�)�`X�?�Unknown
eHostCast"sequential_490/Cast(1���S��@9���S��@A���S��@I���S��@a��Q˵�?i��h@���?�Unknown
�HostResourceApplyAdam""Adam/Adam/update/ResourceApplyAdam(1��v���@9��v���@A��v���@I��v���@a��~���?i0��a�9�?�Unknown
�HostMatMul".gradient_tape/sequential_490/dense_1470/MatMul(1�(\��,�@9�(\��,�@A�(\��,�@I�(\��,�@a��98���?iW�֯r�?�Unknown
xHost_FusedMatMul"sequential_490/dense_1470/Relu(1����xs�@9����xs�@A����xs�@I����xs�@a+���#b�?i�
'&[>�?�Unknown
�HostDataset"3Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat(1��Q��_@9��Q��_@Aw��/E_@Iw��/E_@a�o��P�?i>�����?�Unknown
�HostResourceApplyAdam"$Adam/Adam/update_2/ResourceApplyAdam(1�C�l��S@9�C�l��S@A�C�l��S@I�C�l��S@aH�+�4��?i��3`��?�Unknown
qHostDataset"Iterator::Model::ParallelMap(1��Q��>@9��Q��>@A��Q��>@I��Q��>@a��0��+p?i�NL�;4�?�Unknown
{	Host_FusedMatMul"!sequential_490/dense_1471/BiasAdd(1��ʡEv5@9��ʡEv5@A��ʡEv5@I��ʡEv5@a�2��ef?i����J�?�Unknown
�
HostResourceApplyAdam"$Adam/Adam/update_5/ResourceApplyAdam(1-���g1@9-���g1@A-���g1@I-���g1@a�,{��)b?i�M��\�?�Unknown
dHostDataset"Iterator::Model(1����x�G@9����x�G@ANbX9T0@INbX9T0@a���	a?i/ ��m�?�Unknown
�Host#SparseSoftmaxCrossEntropyWithLogits"gsparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits(1!�rh��/@9!�rh��/@A!�rh��/@I!�rh��/@a�Ž�f�`?i����|~�?�Unknown
vHostSoftmax"!sequential_490/dense_1472/Softmax(1{�G�:/@9{�G�:/@A{�G�:/@I{�G�:/@a���,K`?ir��Ȏ�?�Unknown
�HostMatMul".gradient_tape/sequential_490/dense_1471/MatMul(1/�$��(@9/�$��(@A/�$��(@I/�$��(@a
L�z��Y?i�B����?�Unknown
�HostMatMul"0gradient_tape/sequential_490/dense_1472/MatMul_1(1o���a(@9o���a(@Ao���a(@Io���a(@a��qY?i��&�u��?�Unknown
`HostGatherV2"
GatherV2_1(1�ʡE��&@9�ʡE��&@A�ʡE��&@I�ʡE��&@a��+L�W?iޣ<�M��?�Unknown
�HostMatMul".gradient_tape/sequential_490/dense_1472/MatMul(1fffff�&@9fffff�&@Afffff�&@Ifffff�&@a�� 0h�W?i*�T���?�Unknown
�HostResourceApplyAdam"$Adam/Adam/update_1/ResourceApplyAdam(1o��ʡ&@9o��ʡ&@Ao��ʡ&@Io��ʡ&@a��PE��W?i}\�����?�Unknown
�HostMatMul"0gradient_tape/sequential_490/dense_1471/MatMul_1(1��� �r&@9��� �r&@A��� �r&@I��� �r&@aF���rlW?iP3?���?�Unknown
�HostMul"Ugradient_tape/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/mul(1���S�$@9���S�$@A���S�$@I���S�$@a�s֞�U?i�l��i��?�Unknown
�HostResourceApplyAdam"$Adam/Adam/update_3/ResourceApplyAdam(1��~j��#@9��~j��#@A��~j��#@I��~j��#@a�����T?i����?�Unknown
~HostAssignAddVariableOp"Adam/Adam/AssignAddVariableOp(1�p=
��#@9�p=
��#@A�p=
��#@I�p=
��#@a����#�T?i�}�3��?�Unknown
tHostAssignAddVariableOp"AssignAddVariableOp(1��Mb�#@9��Mb�@A��Mb�#@I��Mb�@a��*�ٴT?i-����?�Unknown
�HostSum"1sparse_categorical_crossentropy/weighted_loss/Sum(1V-��#@9V-��#@AV-��#@IV-��#@a?��?�wT?i�����?�Unknown
�HostDataset"=Iterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate(1��Mb,@9��Mb,@A\���(#@I\���(#@aD�`���S?i���t��?�Unknown
{Host_FusedMatMul"!sequential_490/dense_1472/BiasAdd(1��Q��"@9��Q��"@A��Q��"@I��Q��"@a�z�#��S?i��ko��?�Unknown
[HostAddV2"Adam/add(1����̌"@9����̌"@A����̌"@I����̌"@a?�p�0[S?iƷ;)�?�Unknown
�HostRandomUniform"?sequential_490/dropout_490/dropout/random_uniform/RandomUniform(1d;�O�W"@9d;�O�W"@Ad;�O�W"@Id;�O�W"@aKU���#S?i,���2�?�Unknown
lHostIteratorGetNext"IteratorGetNext(1j�t��!@9j�t��!@Aj�t��!@Ij�t��!@as|c�Y\R?i�S
�;�?�Unknown
�HostResourceApplyAdam"$Adam/Adam/update_4/ResourceApplyAdam(15^�I!@95^�I!@A5^�I!@I5^�I!@a���H�Q?i7���D�?�Unknown
oHostReadVariableOp"Adam/ReadVariableOp(1!�rh�� @9!�rh�� @A!�rh�� @I!�rh�� @a�E�3!gQ?iZ��9�M�?�Unknown
� HostStridedSlice"-sparse_categorical_crossentropy/strided_slice(1����� @9����� @A����� @I����� @aү�jLQ?i2�	o4V�?�Unknown
Y!HostPow"Adam/Pow(1^�I+@9^�I+@A^�I+@I^�I+@a�%���BP?i��n�U^�?�Unknown
v"HostDataset"!Iterator::Model::ParallelMap::Zip(1�&1�Hc@9�&1�Hc@A����Mb@I����Mb@aV�#K\�O?i����Bf�?�Unknown
Z#HostArgMax"ArgMax(1�K7�A�@9�K7�A�@A�K7�A�@I�K7�A�@a����,O?i(C�"n�?�Unknown
f$HostGreaterEqual"GreaterEqual(1+�Y@9+�Y@A+�Y@I+�Y@a�
+��N?i�Q
�u�?�Unknown
�%HostReluGrad"0gradient_tape/sequential_490/dense_1470/ReluGrad(1F����x@9F����x@AF����x@IF����x@a�����M?i-�q#}�?�Unknown
�&HostTile"Bgradient_tape/sparse_categorical_crossentropy/weighted_loss/Tile_1(1`��"��@9`��"��@A`��"��@I`��"��@a�;���I?i�e#�d��?�Unknown
�'HostBiasAddGrad";gradient_tape/sequential_490/dense_1472/BiasAdd/BiasAddGrad(1����K@9����K@A����K@I����K@aP%�۷8F?iER���?�Unknown
�(HostBiasAddGrad";gradient_tape/sequential_490/dense_1470/BiasAdd/BiasAddGrad(1��(\�B@9��(\�B@A��(\�B@I��(\�B@a�f���#E?i9��;��?�Unknown
�)HostDataset"-Iterator::Model::ParallelMap::Zip[0]::FlatMap(1���Q�2@9���Q�2@A��x�&�@I��x�&�@ak<�t?�D?i.bf�^��?�Unknown
�*HostCast"@ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_int64_Cast(1��v���@9��v���@A��v���@I��v���@a�GV��tD?i�7�|��?�Unknown
�+HostBiasAddGrad";gradient_tape/sequential_490/dense_1471/BiasAdd/BiasAddGrad(1;�O��n@9;�O��n@A;�O��n@I;�O��n@a��=��FD?i:Ǳ����?�Unknown
�,HostDataset"MIterator::Model::ParallelMap::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice(1+����@9+����@A+����@I+����@a-�B?i|��=��?�Unknown
v-HostSigmoid"!sequential_490/dense_1471/Sigmoid(19��v��@99��v��@A9��v��@I9��v��@a@J���cB?i�Q�֦�?�Unknown
�.HostCast"?sparse_categorical_crossentropy/weighted_loss/num_elements/Cast(1j�t��@9j�t��@Aj�t��@Ij�t��@a�æ��;A?i@�ّ%��?�Unknown
�/HostGreaterEqual"/sequential_490/dropout_490/dropout/GreaterEqual(1J+�@9J+�@AJ+�@IJ+�@aN��x��@?i(&x�W��?�Unknown
�0HostPack"/sparse_categorical_crossentropy/Reshape_1/shape(1�x�&1@9�x�&1@A�x�&1@I�x�&1@a�z�@?i������?�Unknown
y1HostCast"'sequential_490/dropout_490/dropout/Cast(1㥛� �@9㥛� �@A㥛� �@I㥛� �@a���@?i���I���?�Unknown
V2HostSum"Sum_1(1
ףp=
@9
ףp=
@A
ףp=
@I
ףp=
@a~�xX??i.��Xr��?�Unknown
X3HostEqual"Equal(1�l����
@9�l����
@A�l����
@I�l����
@a�r<Ur<?i��&���?�Unknown
�4HostDivNoNan"Lgradient_tape/sparse_categorical_crossentropy/weighted_loss/value/div_no_nan(1���Mb
@9���Mb
@A���Mb
@I���Mb
@a��0(`2;?iٖ+S\��?�Unknown
v5HostAssignAddVariableOp"AssignAddVariableOp_2(1�~j�t�	@9�~j�t�	@A�~j�t�	@I�~j�t�	@ař���:?i솿S���?�Unknown
[6HostPow"
Adam/Pow_1(1��K7�@9��K7�@A��K7�@I��K7�@aP��4�9?i�C^����?�Unknown
X7HostCast"Cast_3(1����S@9����S@A����S@I����S@a/�b9?i�)����?�Unknown
t8HostReadVariableOp"Adam/Cast/ReadVariableOp(1��C�l@9��C�l@A��C�l@I��C�l@a2>�)q8?i�K3 ��?�Unknown
�9HostCast"`sparse_categorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_int64_Cast(1X9��v@9X9��v@AX9��v@IX9��v@a�һ��p7?i�J+��?�Unknown
]:HostCast"Adam/Cast_1(1/�$�@9/�$�@A/�$�@I/�$�@aDgi�Gp6?i'PC4���?�Unknown
�;HostDataset"?Iterator::Model::ParallelMap::Zip[1]::ForeverRepeat::FromTensor(1ˡE���@9ˡE����?AˡE���@IˡE����?a�أ��5?i�d�$���?�Unknown
�<HostDivNoNan"3sparse_categorical_crossentropy/weighted_loss/value(1�n���@9�n���@A�n���@I�n���@a���՛3?i�eW���?�Unknown
b=HostDivNoNan"div_no_nan_1(1F����x@9F����x@AF����x@IF����x@a�~�ZF3?i�B�ju��?�Unknown
v>HostAssignAddVariableOp"AssignAddVariableOp_1(1��MbX@9��MbX@A��MbX@I��MbX@a�zn)$3?i4�����?�Unknown
w?HostMul"&sequential_490/dropout_490/dropout/Mul(1}?5^�I@9}?5^�I@A}?5^�I@I}?5^�I@a@H�33?iD;V�<��?�Unknown
`@HostDivNoNan"
div_no_nan(1T㥛� @9T㥛� @AT㥛� @IT㥛� @a�D"V�1?i��x��?�Unknown
XAHostCast"Cast_4(1^�I+�?9^�I+�?A^�I+�?I^�I+�?a�����o.?i�r�y_��?�Unknown
XBHostCast"Cast_5(1����x��?9����x��?A����x��?I����x��?a8��&+.?i�S,B��?�Unknown
vCHostAssignAddVariableOp"AssignAddVariableOp_3(1B`��"��?9B`��"��?AB`��"��?IB`��"��?aYd�-?i�9!=��?�Unknown
vDHostReadVariableOp"Adam/Cast_2/ReadVariableOp(1/�$���?9/�$���?A/�$���?I/�$���?a ���'�*?iHb�_���?�Unknown
jEHostReadVariableOp"ReadVariableOp(1��~j�t�?9��~j�t�?A��~j�t�?I��~j�t�?aVL���*?i��_g��?�Unknown
�FHostSigmoidGrad";gradient_tape/sequential_490/dense_1471/Sigmoid/SigmoidGrad(19��v���?99��v���?A9��v���?I9��v���?a�D5Ƕ�)?i�pz��?�Unknown
�GHostMul"4gradient_tape/sequential_490/dropout_490/dropout/Mul(1�Q����?9�Q����?A�Q����?I�Q����?ad��<��(?i[��ԑ��?�Unknown
�HHostReadVariableOp"/sequential_490/dense_1471/MatMul/ReadVariableOp(1�� �rh�?9�� �rh�?A�� �rh�?I�� �rh�?a� {�l(?i\s,���?�Unknown
yIHostReadVariableOp"div_no_nan_1/ReadVariableOp_1(1��v���?9��v���?A��v���?I��v���?a��(?i��^���?�Unknown
�JHostMul"6gradient_tape/sequential_490/dropout_490/dropout/Mul_1(1333333�?9333333�?A333333�?I333333�?a�\�&?iJhFO���?�Unknown
vKHostReadVariableOp"Adam/Cast_3/ReadVariableOp(1�I+��?9�I+��?A�I+��?I�I+��?aV���k%?i��QS��?�Unknown
�LHostReadVariableOp"/sequential_490/dense_1472/MatMul/ReadVariableOp(1ffffff�?9ffffff�?Affffff�?Iffffff�?a�k��_I%?iN�J����?�Unknown
yMHostMul"(sequential_490/dropout_490/dropout/Mul_1(1���S��?9���S��?A���S��?I���S��?a��ƚ�$?il������?�Unknown
�NHostReadVariableOp"0sequential_490/dense_1471/BiasAdd/ReadVariableOp(1V-���?9V-���?AV-���?IV-���?a?��?�w$?i{�';��?�Unknown
�OHostReadVariableOp"/sequential_490/dense_1470/MatMul/ReadVariableOp(1�$��C�?9�$��C�?A�$��C�?I�$��C�?a,���$?i���|��?�Unknown
wPHostReadVariableOp"div_no_nan/ReadVariableOp_1(1�l�����?9�l�����?A�l�����?I�l�����?a��p�#?i�����?�Unknown
�QHostReadVariableOp"0sequential_490/dense_1472/BiasAdd/ReadVariableOp(1��n���?9��n���?A��n���?I��n���?a���8&�#?i?.���?�Unknown
�RHostReadVariableOp"0sequential_490/dense_1470/BiasAdd/ReadVariableOp(1X9��v�?9X9��v�?AX9��v�?IX9��v�?aHh�7D#?if��b&��?�Unknown
wSHostReadVariableOp"div_no_nan_1/ReadVariableOp(1�����M�?9�����M�?A�����M�?I�����M�?a�܌��?iMd�Z#��?�Unknown
uTHostReadVariableOp"div_no_nan/ReadVariableOp(1;�O��n�?9;�O��n�?A;�O��n�?I;�O��n�?aC�v���?i     �?�Unknown