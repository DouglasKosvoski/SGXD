GDPC                                                                            /   @   res://.import/Idle0.png-afda47c9eebabf7d15ed3ab87117a2e0.stex   `L      1      "�3�Zys��@J:�@   res://.import/Jump0.png-bea8849722c7c7cc8260c1c340f43204.stex   @V      F      �oY�DQ�����6c���@   res://.import/Jump1.png-f62e052308ad2292e68385541d25dba3.stex   0`      6      e/�!]����⦗@   res://.import/Jump3.png-d1a626dbbfabf18247e5bc8329e7204f.stex   i      �      �Rk�$ϵ�i�	�X@   res://.import/Jump4.png-5577198c781372f67ecdf1650d8da4ce.stex   pr      �      Mi���*X�T4��ܓ�LL   res://.import/JungleDirtTileSet.png-33d48d6808ea432feb082018ee05250b.stex   `�      �(      2��^�Xi����JO�<   res://.import/Run0.png-197eddc905e08d0c777dd4c13bc41c30.stex�{      9      �at��L_+��kq\<   res://.import/Run1.png-0c92c9a24b59f35d88eabc72e60383f3.stex��      �      ���A�	��JH&\�"��<   res://.import/Run2.png-ac956ca4e7d0d58784912494dd4edf4c.stex�      �      �y��E��D�=���cy�<   res://.import/Run3.png-eb0a7000459de67c8fb5ecb4205b5fe3.stexp�      Y      �̻Ok��3�m�|B�<   res://.import/Run4.png-8f314cb9339581be70fceb46cd3a09a4.stexp�            ��(SJ6!!�7� n�<   res://.import/Run7.png-b5d91388e8a54d997d898da9208486a3.stex0�      �      A .H��Q�z�K��<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      U      �woM����aT����u$   res://DirtTitles.tscn   P      p      1;ĖL�F\���F�׍   res://EndGame.tscn  �      �      ��L]����a��   res://JungleTS.tres p#      �      o�9Wg"������    res://KinematicBody2D.gd.remap        *       �9�^L�TDv [   res://KinematicBody2D.gdc   :      D      !���ckљ�̗MJn�B   res://MainMenu.tscn `@      :      0a-VL)[�y���5z   res://PlayButton.gd.remap   0     %       �'���dNb�
̙o   res://PlayButton.gdc�B      �       p�y^Ym�P��v�   res://Player.tscn   �C            ��Y�7KjDх   res://QuitButton.gd.remap   `     %       8T��������4��q   res://QuitButton.gdc�J      �       ā�!�P����99   res://RetryButton.gd.remap  �     &       ��c�j��E��ޔ�B   res://RetryButton.gdc   `K      �       p�y^Ym�P��v�0   res://Sprites/Sprites/Player/Idle0.png.import   �S      �      M�5�qy�(4�?0   res://Sprites/Sprites/Player/Jump0.png.import   �]      �      �Es��F�I�h8<����0   res://Sprites/Sprites/Player/Jump1.png.import   pf      �      :�S�F�2�牨�d��0   res://Sprites/Sprites/Player/Jump3.png.import   �o      �      X�>#?����W6���,�0   res://Sprites/Sprites/Player/Jump4.png.import   0y      �      �w���[_%��9��,   res://Sprites/Sprites/Player/Run0.png.import�      �      X��<I�>����w�,   res://Sprites/Sprites/Player/Run1.png.importp�      �      b �Aܙ�2���!�I,   res://Sprites/Sprites/Player/Run2.png.importД      �      W7��4����m��,   res://Sprites/Sprites/Player/Run3.png.importН      �      f�����f�RV�Վ9,   res://Sprites/Sprites/Player/Run4.png.import��      �      (�/б�T�>��� �5,   res://Sprites/Sprites/Player/Run7.png.import��      �      �q<xʢ'ǩ�6�R�78   res://Sprites/Sprites/Tiles/JungleDirtTileSet.png.import`�      �      K>xs�'����:pSu7   res://World.tscn �            H�ci/P(^�9��u��   res://World2.tscn   @�      O      ��c p����ٴ�   res://WorldComplete.gd.remap�     (       +llE�ί��(ILQ-d   res://WorldComplete.gdc ��      �      )��`U��{��s   res://WorldComplete.tscn`�      �      A!Vk��䧎,d���   res://default_env.tres  `�      �       um�`�N��<*ỳ�8   res://icon.png  �     �      G1?��z�c��vN��   res://icon.png.import   p�      �      �`�8�D�Ւ�(�1��   res://project.binary�           |��l�￭.M.p[gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/Sprites/Tiles/JungleDirtTileSet.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 15.8634, 15.9341 )

[node name="DirtTitles" type="Node"]

[node name="0" type="Sprite" parent="."]
texture = ExtResource( 1 )
centered = false
region_enabled = true
region_rect = Rect2( 0, 32, 32, 32 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="0"]
position = Vector2( 16.8179, 16.5026 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="0/StaticBody2D"]
visible = false
position = Vector2( -0.735783, -0.52556 )
shape = SubResource( 1 )

[node name="1" type="Sprite" parent="."]
position = Vector2( 32, 0 )
texture = ExtResource( 1 )
centered = false
region_enabled = true
region_rect = Rect2( 32, 32, 32, 32 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="1"]
position = Vector2( 16.8179, 16.5026 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="1/StaticBody2D"]
visible = false
position = Vector2( -0.735783, -0.52556 )
shape = SubResource( 1 )

[node name="2" type="Sprite" parent="."]
position = Vector2( 64, 0 )
texture = ExtResource( 1 )
centered = false
region_enabled = true
region_rect = Rect2( 64, 32, 32, 32 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="2"]
position = Vector2( 16.8179, 16.5026 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="2/StaticBody2D"]
visible = false
position = Vector2( -0.735783, -0.52556 )
shape = SubResource( 1 )

[node name="3" type="Sprite" parent="."]
position = Vector2( 0, 32 )
texture = ExtResource( 1 )
centered = false
region_enabled = true
region_rect = Rect2( 64, 160, 32, 32 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="3"]
position = Vector2( 16.8179, 16.5026 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="3/StaticBody2D"]
visible = false
position = Vector2( -0.735783, -0.52556 )
shape = SubResource( 1 )

[node name="4" type="Sprite" parent="."]
position = Vector2( 32, 32 )
texture = ExtResource( 1 )
centered = false
region_enabled = true
region_rect = Rect2( 160, 160, 32, 32 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="4"]
position = Vector2( 16.8179, 16.5026 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="4/StaticBody2D"]
visible = false
position = Vector2( -0.735783, -0.52556 )
shape = SubResource( 1 )

[node name="5" type="Sprite" parent="."]
position = Vector2( 64, 32 )
texture = ExtResource( 1 )
centered = false
region_enabled = true
region_rect = Rect2( 96, 160, 32, 32 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="5"]
position = Vector2( 16.8179, 16.5026 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="5/StaticBody2D"]
visible = false
position = Vector2( -0.735783, -0.52556 )
shape = SubResource( 1 )

[node name="6" type="Sprite" parent="."]
position = Vector2( 0, 64 )
texture = ExtResource( 1 )
centered = false
region_enabled = true
region_rect = Rect2( 96, 0, 32, 32 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="6"]
position = Vector2( 16.8179, 16.5026 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="6/StaticBody2D"]
visible = false
position = Vector2( -0.735783, -0.52556 )
shape = SubResource( 1 )

[node name="7" type="Sprite" parent="."]
position = Vector2( 32, 64 )
texture = ExtResource( 1 )
centered = false
region_enabled = true
region_rect = Rect2( 128, 0, 32, 32 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="7"]
position = Vector2( 16.8179, 16.5026 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="7/StaticBody2D"]
visible = false
position = Vector2( -0.735783, -0.52556 )
shape = SubResource( 1 )

[node name="8" type="Sprite" parent="."]
position = Vector2( 64, 64 )
texture = ExtResource( 1 )
centered = false
region_enabled = true
region_rect = Rect2( 160, 0, 32, 32 )
__meta__ = {
"_edit_group_": true
}

[node name="StaticBody2D" type="StaticBody2D" parent="8"]
position = Vector2( 16.8179, 16.5026 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="8/StaticBody2D"]
visible = false
position = Vector2( -0.735783, -0.52556 )
shape = SubResource( 1 )
[gd_scene load_steps=3 format=2]

[ext_resource path="res://RetryButton.gd" type="Script" id=1]
[ext_resource path="res://QuitButton.gd" type="Script" id=2]

[node name="Control" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="RetryButton" type="Button" parent="."]
modulate = Color( 0.235294, 1, 0, 1 )
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -64.0
margin_top = -20.0
margin_right = -15.0
text = "RETRY"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
world_scene = "res://World.tscn"

[node name="QuitButton" type="Button" parent="."]
modulate = Color( 1, 0.270588, 0.270588, 1 )
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = 32.0
margin_top = -20.0
margin_right = 77.0
text = "QUIT"
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}
               [gd_resource type="TileSet" load_steps=3 format=2]

[ext_resource path="res://Sprites/Sprites/Tiles/JungleDirtTileSet.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 15.8634, 15.9341 )

[resource]
0/name = "0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 32, 32, 32 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 16.0821, 15.977 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
} ]
0/z_index = 0
1/name = "1"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 32, 32, 32, 32 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 16.0821, 15.977 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
1/shape = SubResource( 1 )
1/shape_one_way = false
1/shape_one_way_margin = 1.0
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
} ]
1/z_index = 0
2/name = "2"
2/texture = ExtResource( 1 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 64, 32, 32, 32 )
2/tile_mode = 0
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shape_offset = Vector2( 16.0821, 15.977 )
2/shape_transform = Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
2/shape = SubResource( 1 )
2/shape_one_way = false
2/shape_one_way_margin = 1.0
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
} ]
2/z_index = 0
3/name = "3"
3/texture = ExtResource( 1 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 64, 160, 32, 32 )
3/tile_mode = 0
3/occluder_offset = Vector2( 0, 0 )
3/navigation_offset = Vector2( 0, 0 )
3/shape_offset = Vector2( 16.0821, 15.977 )
3/shape_transform = Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
3/shape = SubResource( 1 )
3/shape_one_way = false
3/shape_one_way_margin = 1.0
3/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
} ]
3/z_index = 0
4/name = "4"
4/texture = ExtResource( 1 )
4/tex_offset = Vector2( 0, 0 )
4/modulate = Color( 1, 1, 1, 1 )
4/region = Rect2( 160, 160, 32, 32 )
4/tile_mode = 0
4/occluder_offset = Vector2( 0, 0 )
4/navigation_offset = Vector2( 0, 0 )
4/shape_offset = Vector2( 16.0821, 15.977 )
4/shape_transform = Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
4/shape = SubResource( 1 )
4/shape_one_way = false
4/shape_one_way_margin = 1.0
4/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
} ]
4/z_index = 0
5/name = "5"
5/texture = ExtResource( 1 )
5/tex_offset = Vector2( 0, 0 )
5/modulate = Color( 1, 1, 1, 1 )
5/region = Rect2( 96, 160, 32, 32 )
5/tile_mode = 0
5/occluder_offset = Vector2( 0, 0 )
5/navigation_offset = Vector2( 0, 0 )
5/shape_offset = Vector2( 16.0821, 15.977 )
5/shape_transform = Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
5/shape = SubResource( 1 )
5/shape_one_way = false
5/shape_one_way_margin = 1.0
5/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
} ]
5/z_index = 0
6/name = "6"
6/texture = ExtResource( 1 )
6/tex_offset = Vector2( 0, 0 )
6/modulate = Color( 1, 1, 1, 1 )
6/region = Rect2( 96, 0, 32, 32 )
6/tile_mode = 0
6/occluder_offset = Vector2( 0, 0 )
6/navigation_offset = Vector2( 0, 0 )
6/shape_offset = Vector2( 16.0821, 15.977 )
6/shape_transform = Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
6/shape = SubResource( 1 )
6/shape_one_way = false
6/shape_one_way_margin = 1.0
6/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
} ]
6/z_index = 0
7/name = "7"
7/texture = ExtResource( 1 )
7/tex_offset = Vector2( 0, 0 )
7/modulate = Color( 1, 1, 1, 1 )
7/region = Rect2( 128, 0, 32, 32 )
7/tile_mode = 0
7/occluder_offset = Vector2( 0, 0 )
7/navigation_offset = Vector2( 0, 0 )
7/shape_offset = Vector2( 16.0821, 15.977 )
7/shape_transform = Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
7/shape = SubResource( 1 )
7/shape_one_way = false
7/shape_one_way_margin = 1.0
7/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
} ]
7/z_index = 0
8/name = "8"
8/texture = ExtResource( 1 )
8/tex_offset = Vector2( 0, 0 )
8/modulate = Color( 1, 1, 1, 1 )
8/region = Rect2( 160, 0, 32, 32 )
8/tile_mode = 0
8/occluder_offset = Vector2( 0, 0 )
8/navigation_offset = Vector2( 0, 0 )
8/shape_offset = Vector2( 16.0821, 15.977 )
8/shape_transform = Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
8/shape = SubResource( 1 )
8/shape_one_way = false
8/shape_one_way_margin = 1.0
8/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 16.0821, 15.977 )
} ]
8/z_index = 0
       GDSC         -   #     ������������τ�   �涶   ����������������   ������������   ��������򶶶   ����������   ������������󶶶   �����ض�   ���������������Ŷ���   ����׶��   �������ض���   ����¶��   ����������������Ҷ��   ζ��   �����Ӷ�   �����޶�   ���϶���   ����������Ķ   ���������������������Ҷ�   ϶��   �������������Ӷ�   ������϶   Ѷ��                2     �������?   �                      ui_right      run       ui_left             idle      ui_up         jump      fall      ?                                           #      (   	   /   
   0      7      <      =      F      U      \      d      m      }      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '     (     )     *     +     ,   !  -   3YY:�  �  PR�  QY:�  �  Y:�  �  Y:�  �  Y:�  �  Y:�  �  Y;�  �  PQYY0�  P�	  QV�  ;�
  �  �  �  &�  T�  P�  QV�  �  T�  �4  P�  T�  �  R�  Q�  W�  T�  �  �  W�  T�  P�  Q�  '�  T�  P�	  QV�  �  T�  �3  P�  T�  �  R�  Q�  W�  T�  �
  �  W�  T�  P�  Q�  (V�  �
  �
  �  W�  T�  P�  Q�  �  &�  PQV�  &�  T�  P�  QV�  �  T�  �  �  &�
  �
  V�  �  T�  �  P�  T�  RR�  Q�  (V�  &�  T�  	V�  W�  T�  P�  Q�  (V�  W�  T�  P�  Q�  &�
  �
  V�  �  T�  �  P�  T�  RR�  �  Q�  �  �  �  P�  R�  Q�  �  �  P�  R�  Q�  Y0�  P�  R�  QV�  �  T�  �  �  .�  Y`            [gd_scene load_steps=2 format=2]

[ext_resource path="res://PlayButton.gd" type="Script" id=1]

[node name="Control" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Button" type="Button" parent="."]
modulate = Color( 0.188235, 1, 0, 1 )
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -21.5
margin_top = -10.0
margin_right = 21.5
margin_bottom = 10.0
text = "PLAY"
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
world_scene = "res://World.tscn"
      GDSC                   �����ض�   ���󶶶�   ����������Ӷ   �������Ҷ���   �������Ӷ���   �����������Ӷ���      *.tscn                                             3YY8P�  R�  RQ;�  YY0�  PQV�  �  PQT�  P�  QY`            [gd_scene load_steps=14 format=2]

[ext_resource path="res://KinematicBody2D.gd" type="Script" id=1]
[ext_resource path="res://Sprites/Sprites/Player/Run3.png" type="Texture" id=2]
[ext_resource path="res://Sprites/Sprites/Player/Run4.png" type="Texture" id=3]
[ext_resource path="res://Sprites/Sprites/Player/Jump1.png" type="Texture" id=4]
[ext_resource path="res://Sprites/Sprites/Player/Run7.png" type="Texture" id=5]
[ext_resource path="res://Sprites/Sprites/Player/Jump0.png" type="Texture" id=6]
[ext_resource path="res://Sprites/Sprites/Player/Jump3.png" type="Texture" id=7]
[ext_resource path="res://Sprites/Sprites/Player/Idle0.png" type="Texture" id=8]
[ext_resource path="res://Sprites/Sprites/Player/Run0.png" type="Texture" id=9]
[ext_resource path="res://Sprites/Sprites/Player/Run1.png" type="Texture" id=10]
[ext_resource path="res://Sprites/Sprites/Player/Run2.png" type="Texture" id=11]

[sub_resource type="SpriteFrames" id=3]
animations = [ {
"frames": [ ExtResource( 8 ) ],
"loop": true,
"name": "idle",
"speed": 5.0
}, {
"frames": [ ExtResource( 9 ), ExtResource( 10 ), ExtResource( 11 ), ExtResource( 2 ), ExtResource( 3 ), ExtResource( 5 ) ],
"loop": true,
"name": "run",
"speed": 15.0
}, {
"frames": [ ExtResource( 6 ), ExtResource( 4 ) ],
"loop": true,
"name": "jump",
"speed": 10.0
}, {
"frames": [ ExtResource( 7 ) ],
"loop": true,
"name": "fall",
"speed": 5.0
} ]

[sub_resource type="CapsuleShape2D" id=4]
radius = 14.0
height = 28.0

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="AnimatedSprite" parent="."]
frames = SubResource( 3 )
animation = "idle"
playing = true

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0.891907, 4.01357 )
shape = SubResource( 4 )
    GDSC                   �����ض�   �������Ҷ���   �������Ӷ���   ���¶���                   	            3YY0�  PQV�  �  PQT�  PQY`         GDSC                   �����ض�   ���󶶶�   ����������Ӷ   �������Ҷ���   �������Ӷ���   �����������Ӷ���      *.tscn                                             3YY8P�  R�  RQ;�  YY0�  PQV�  �  PQT�  P�  QY`            GDST@   @              PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��[]hTG�n�H���B���-�l1�@ ]h�
.h,)|��[H�","���1AB��-dI�F���	�^��%YX� � 4��J�>��d�ܙ�?w����3s�����9g�L��x���?�����H�m��f@Zr鶊!9���F�j@���7��ġQ�_T�Z����ѭ�HPN �P,ɚ���
�-@H��PA3�B��Ht?۾&~�������!�.A�f ��,KB��6-  �a��_���n�j���65ܡ�s�Zm��z�a���8@��'{��3)���D$�*�[�:�P���P��^��_���vn]���n.�B��6�LO{����� "�\r��\/۹U���6< �W��3��o"���a�� ���þ�C%R�ɬGB
?����P���l�������d)�#�B,�|�t �Ϭo xC����0J��Z�8}���`��Z��=~m�a�=(~���=Vx�3ۿ*�Zv���/�=�y�.  �8-o7�<;&$<(� �&�˫�"������G��gj��G$�_Hƃ�G{���6���>+���5�u��~�E�>@W�61�/>"�}�ݿ p�;�|
�.Ue��Md1>�|������	���r2Fbg�|Z( �%�O양u͖Y�̀#1B�垴�6�R/��#L�8�s��a�6�GhlA3� <46O�#Dp+�-_e�%@��E[b�m>�����J񼓢.�|�U����O�v+�}@3~�����Z�� #���w'�f��>���f�]i7��:6k�	��A)	Vj��~,&h�bb�~�'
y���Nth�/7��m�"�B������1i�1�F2��#�~�V7�&���u&n���,��/>ҏ�&{�q���h� "|�n�P,af=�8v�xwS���Z��'ĽT�"�����	X��p$��D��A�Ya6K$"A9x�\ i���S��n�e���N�\Z@4`m���E����v��ŗz	HOs�+�[M~�#�H;���/�cVN �� �ղM#8�T��z	���~� |�X%� 8�(:�/�]7 �= ��\�<�s�xh�XXX cs+#m����z/�&��q����x�`�Vq��i�8?z������J��! ��=�r[����:� �h[eY�U����ex	O�	Z P<<,lϮg�>���}^=�j�Q�1�/<PѐF�&:� ��2#vr�6%!h�8z��kT�� ցΎ�2 ��� �ҩӮ�"��"�XpB��j�q��`���#A/�Idx"6�X
$k̂���!�6�!��@EZ�U6�a�Z��t�mѣ(�n h�ղ�����`.�����[�7}_�ѡƙ�)WH�rN��E�]�nx~@��Rj%I��j]6�-z��@!F�^��P���m�eg/������a�~�������K��n|y���(��g/
-��O7}h��62+�b�a�Y8�t�=����J6C�h���x�1{ǖxs+��d�jF�I/�vs+CH �o��C�UY�J���R��|���d�������w���~W�6rOZ��ˉM���ix����ܟ���t�Ev�5��B�䗀Ar�E��$�����±��#�k	�V�a����� ?�y�vT�t�L�¥�o��t�Q��'�Ⱥߒ�~6�    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Idle0.png-afda47c9eebabf7d15ed3ab87117a2e0.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Idle0.png"
dest_files=[ "res://.import/Idle0.png-afda47c9eebabf7d15ed3ab87117a2e0.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST@   @            *  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��[]H\G���,�Z�ЧY-%���Ak!�EH)�>(Ƀ}��P|�.(h"�Ԁ`��j,�.�5l���O��($� ���wƹsg��̬�׹w~�7�9sf� �P. ,l;���� `���޹!k6T�'E�mi]W���0��@�%$X�	�/�����g������Q��,�a� ��ͤ�κLx�j��	(
�Lgl�	���a�����0	�$|l��d:���sS8([�b�2��Oe"�޹�01���$��$X*�(c2nu�=k�DI `�� �$�߻���	�
?��l{�x"����F^� ����!��]��g��zsF�գ�_��,l&��2xk���� "���(�j���x"B�09�ી��Ȅ�'"A�#ȗ������8�3S��W��� p�,��66�%3��``a��2����[]�Y�� ���g�����o�;�ST��4��f{0=�a�5��D��fg k�Ȃ!>h2��9�A�FYbT�����pX�	
��Cb�~�;Ȩ��	��g�Z�Kߑ���꣞���fYf��7g����}^��
�E0J��¶���%�/:�eL��9�RD�K�Q�����j��T��&,�!r���~���k[�T��ݬ�;�`ALC�?0c�_~���+ �K��rX*�X�mR���=2��� �zja��i�^����i[���L�d�p<�?�|��ۿW���V�xm�  B ����3�!c)1S&`M�\����M�Y�'Aj��h@���<Z ��ߒ���x�k^PC�} #< �R�[�u��fj5_��'�2Nx�A1'$��~��ܔb�+B0, ^'��t�{_�:��/�����7�6���hv��=�t�޵���?|��D�?h���ޖl�C�w��ү�Yds�8���Q߮�}�\���|�L+� 3���q|��=[�G}������P�A���Џ���"gȚC2����<��"�������|�'�ԃ��/ ��D>�F�&�b�+<� -0�ø�5�ٌ�p�0KT�_�������uۻln]�&� ��:(��= ����	��`u���x.����-a�!�h��d`ãT��q��{a�<6��>?�CM��֗�8��� 8h����A޺�^�ll�	�``a[I�Mx��0�`g���^wF�r�X(�O��ل�,�RԄ˅&2<:D�bl@��Z�L��y��=�&r(�K߿ʪ��~a<%��?�:ѭ�/;ʈ&I��i�1���=ȝ>7 d�e��^a�  X��Ъ_�_ơ��x�ѣ1լ�q�x'��:L�م����o"7���5�FƵ���"e��'����2��kNQ�b�}����S�t3Vpb�cT'��#q��?�@p,���}��
��ǂ-�X\a�%? z�C#U\����^m��>A �|�`��M ױH /
Is�Չ.��U�~�+�&���3,�K�(X���)Y���:�Eb��d$�
>p�yq���]���u��vo���
�:��¤������fS�
�10�%0-G۩=o�1*͵�EE"�<���g0C�� ����<���xm���� �;���5@��4%<Pz�'�>���8��Eh /��xw�PH�o! �m?�/�M0.b `;B�j��l��!�m��vX朼^� p&��� �;���Н�    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Jump0.png-bea8849722c7c7cc8260c1c340f43204.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Jump0.png"
dest_files=[ "res://.import/Jump0.png-bea8849722c7c7cc8260c1c340f43204.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST@   @              PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��[Oh\E�=5B+x<xZ�`�	��PKW({�X�
Bzh.O�h<��E؂����B��\�{H�D��ٓ�`ZT��o^�͛�fޛy��$�͟���7�|�̬��]*�lN��j�i{����V�Z�(�۷��}Fʛ��l@�-+�]uw��w{�����|�΋�>SW��a+�L���Xn@���#�a=���PxR������_�[~�r���66q��=�g>�I��$$V �v~��� �)A�-.��������ƠS �&Γ]J,��N�G�Ğ)X��������;���ɏh߳��C���|�����i 0ϱ�hH�H��rA�PX؝3���V���R�s��G� [!B�F�V.�X� E�3��e����<��=���+�Z�$���xϦ�k8I�(�̿s�r8�L������b)�RHj���%���l�yT�me`Ŀ��5�K���� ��?/av�Q,�CT�mt(,�,d���͟�ૹ��G�΍��HiN�?�a��c�ȳ9.*]��e���,���,|�-Z�R����?����  $�! �Y�aN���1+ˍF���.Oҟ�3�ߩ��!�f�:�������=�K+�<q�]# П/�=�?+8'�y~*�c�@���<l�x�fc/�t�"1�,�a��@�櫧d'NE�j��PW�*��눡sL�^�� @B�n3�"���ܲl�Ě [�U��Dݎ�-'&���!n���4&���P���S��U�GpM @D��LQ�G���Sg �ݖc������k��o\� �N�#��]�S^&As����fh��r�: �Q�Y�'��υ�  ��|�B�<�� }(����Rz�����cj�<�q8�--s8��:!ҫ��E��>� �� �ӡ�����ڻ��;n����&�tÔf(�:��[��`�2C6(�Rt�p
$�c���Y_<'���3��-��Z6Hv,Z�jwx}�uǀvz}Y��#�l���_�x�W>r{G�п�R	���"��X��zC�����$Y�����/GiV�Hx@8�#e��b�6C�SS/uR���'$������{��3���d$���=c�� ���.[�L�RP�r����%�mm�6N��7���2�/]q�=᱆� Z�P������@�}�"!�=��q'v�Ƒ�2�aF��U�ї�'R���Q\�{����7S�$�%vЪ� NOc�A��g*$[%jǥ�O��E�2J��''��f���hLJ�O�>�W��C��]�"k'H)�k8iX1|1�|��kW_�GX��W>��	��O#SA�與%�ԉ����搜 �f�#A�F�#١I�&�:AFB�U �
;��?� ?<
�����0;ytܕ�\?3�/"35��h�0�dh`�������Y"�QQ��KK��V�&�c6������|�-+=�=    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Jump1.png-f62e052308ad2292e68385541d25dba3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Jump1.png"
dest_files=[ "res://.import/Jump1.png-f62e052308ad2292e68385541d25dba3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST@   @            �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  YIDATx��[OH\G�^m.K������.�$Xj�݃x4�-s�����*/%�
��v�
� 6i5����J)��C���vgv��y��[���{������o~���փc�?�����9RɄU���[��a�Rj�B���r&�xg�m֊��.Dp" !rzn�fML�o|'����[���SɄN� �B4j��wv�d��ˆ�"Bx��W�G��e�?�FF���� r�*���?��ٍm��89=��N- 1:+Q� ��A&ݣ{�H���
e���BA�GĈ�2#�`E��Cѫ"BT'Xɴ�T�����)�kd����$>� ��7��������lQ���v�e�*y.���3�����	"(��5K��� Њ�UU:�d�з= ٔT���M�~� xz���I�ŕ�]��K�j�B�grsx���޿(�15=���� �\k{M�a@�AE������!=S� �2� ��@��%��z�����~,�� @K��E���@d����(���g@7����-nqq����^�����[8� ��w_K��cd��ދd5�	F�I�P�.����-m"���.% ��0m5!��
��}F�j�;�1:V���ci��
$>�v#�׬N��̴��5����tء����M�!��O�%�����@/��l�B� ���d���5K�����I��5��~�*FO�c~>�|G���;ڑJ&(����g���L��=��K߾^����u���������#���6��	�e1+���g dAjttf��ѹt�)+���Y���X;
04��6߯����.P��:��'*���mj9�� ��"aR�xG�r�TE��5�������  n�R������:T]\�#�6
����JG�\DB~&7�'��@-�#/}�:��|��y%frs���FU���,S��� d:|��]��2����C�#���Gn�m����f'q0;	 �>�W��Fz+���	�N�����`f����`vm�mtM����Nu5��e����n��p�wW6�����r���	u*(ȳSi������=y�����R8i�-��P�
� �"����.�L��1O�,d(#���&�VE�z�rGh;wC,C���G��3���n����`��ge�������gqBO�,�z��	���"x�R�,l���?�*�j|}�cn]/��[�k裀�a�ƿ��~z~��y�6��N�g���>?�M�ޥ��֗1���i��<@��`��$��TH%8[_��NN��b�!_���	����b�*B���nu�N�����֗�a��Ip,@��T����0�5$^��ؓ�����D����ñ�P��Ǎk{M�;������� R���K��4��آ�C@$/���1�(-�/M� ]�J�U�C5�:��p�V��:�p�[/�p���@��(�@c��r���:�6�W8�'&�T"DzY4���c��*���L�9N ���ር�; V J/!=��l~#�=�X-��0hǋ�K_ �'�A#,�������.�{�w����s7    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Jump3.png-d1a626dbbfabf18247e5bc8329e7204f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Jump3.png"
dest_files=[ "res://.import/Jump3.png-d1a626dbbfabf18247e5bc8329e7204f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST@   @            �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  MIDATx��ZOH\G��ڴ ����zZ*f�H,����� �����\�����l�)%Hs	V�`��FZ��"���J�n-B �`/��@+�z�7���f潝YK�����f������7��0z����5լl���̨Avf%�b<o�(�>�۽��#7�c������M�{���(�1/%l�����O�����њj�E���zIHJ@O���-�"�	lE CF{K���7�!E=Q�2$�"
���+��lT�|�a
�������5��:�Q!d��ֲ��T�x@�5F���j	6
,kC����Ѯd㐇& �w�Y�3���"�t��" �O�Q,m.�G�:шY������V�$C�0Hy��,AD���J������--�#!7��8�~L���{`�fL��!���0�Q�6�j�$HQ�ç�Ë&�7D�-OJ�3�?���9��zb~�)|q��?����J��!$?^SJ�"�V�&���e/2\�|g/|&<�n;&�{��)����s��z��H�|���ru�i� ��bl�Q���ή��� }BCYye<���D��V�$���S�KH �aq�V$	�ӷ��v+��2��D'�D3A�@9�h��y��� �H Ə_���[�`��=~&�kh%	�[M?�]���b�����OL!hH�1~eLx�6/^P)����C�K$O�� ���lؑiG��=W����}����cA��)�犡\�"�چ�H�Y��U�n��7��'��Z~]d�x����C{�/3:q��}��zO�d���%'l��[X�I�1�x"Ư�	S	�Lo�Nl~�3  ��[���B5�f% zӥ@��B��rh����Q
 ��/-T�Z�m�" Ɠ{YS�q T���Wdbu���_�
 p{r��6&`�G���w�}�r{��9�<����	>ס1	3��$|��m<ٹ/����³W��(�\�d����
A$x����/�P���kHO���}�������0^*3���b�����6�Iho��̥� ��B��?=<^��A½F/�b��d5(���+"?W�)���{��ru��g�����
��+���%��x���*B�j��@�7*D�=�?�P�F{Wg��o�F
m�0%z�{���v3u�
|q$�M}����=L/���PwxOr �r�B@$��.DF؎,�U����t�����g���BC�rR�I���:#M?��$������V0ү��uC$zO������¼�>R�`�x��RrDE��H�����O��):gҰzB$
�a+0�ф?����՟���c�)��-����c�r��CV\`4�����|In$	N G_u���8`"����MXM���^$9 ;���T���V�c�!IP�Z��y�:k`����s 4��"\�{P���A��F@k�����?��{�yh�#���/䝚�RÅŎm�+�ɹ�:� ;��
B��\�C��0��9���IvM c�m���or ۮ���?�Ie��!��R���'�:*�`E�����O��F9Z�� =����#���'��|���xe    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Jump4.png-5577198c781372f67ecdf1650d8da4ce.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Jump4.png"
dest_files=[ "res://.import/Jump4.png-5577198c781372f67ecdf1650d8da4ce.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST@   @              PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��[mhE~�k�B��#"�5��))r)��kAhK�J�AD����aJ�I ��
��r�D%B���F"h�XkE�)������%AJ]dgofvfw��"�{��w�y��}g��M���۶z [����l5-UG?ϵn���6J�a�'v��]���7���W�
@�\X�b۫�	P���,A�p����B���M�2�Ԁ-da
����� �^���g^ �W�R��* O��A�3XÆN�{F`���f!O���B�MNc�� 
����Jh[Ԩ*��Jp��383t��w|	P
�"R�DL�9���|&���So "e��Sž h^�K !��ºR��g�& ���"P}a`;��nK���Ig�T4���������g
�)�#��ѵ�=���߿%9y�],pZׯ~�{L�	�'�1F��H&  �n����N��#z3�j���\�)CC�����X? �B�	�����B�	���Y�F ce�E/�Õk� ��xD���U����/���t0��3�Ж !��6,��`�6*AT4�#�i`���SI�mm����Jt(J��d�e3f�?��^� ����|	�]�yϳ�(:�?\����vt_,��§���d9�1�)L(������D�-U�\��x���0R�и*y �4HW����lnKա�wVX=�$�7�#L|���j�����]4��]���K���f��K����  M{q�q��ZnjV�)jKm���/�I�#3�py�����Ep- !O AH�&�o��SI��s���,7�8�T����� ���'�{�'0�O^�H�K��� q���s��"2�,2�,`�ѻ�c����\<���)L��*�~���[�sK�^@� ��'�X��c�K�c'��n`�O *�n�h����������^����m<͟MZ��ť2k�n�	y]Ц���~߸�d���R �����P�� �z�di�}\�Ա����Xn: �|������
��b�� H,  ~)|���	��5?�Ʒ�e�i�ߜ�L:+;Q��� �2��tVJ��(
a~f3���e`D��t`�-�{�y��V[���]���h� ���E���
ܦA��\�}9s���l�_m��j�<C>���u�N/� �pr�9��A��E�?S���Ya)�E��[?���
y�(r|��@.:S8��1��@D�Y��C��b��M�A�TXRR:M��OĔ�9 �2���!��;���FWO��C�{3 �nO�E�d���El[�Kj<n�FPGbZWO'3�y�)� .��&���fiX䉐�"����A��G{�ݖXY գ��=��&M���֫N�v�jlt����[�G��{*�U��!���v� ��/9�t��[9�`Β�F�c *� `��nY��c�8�a�iP"��5��}h�8�5�� h�%)0p\A]�C�u���� ���L,��`�;����39��)P"HO�h ����t�I*͚� F��'�a����4H��'���2�v"��l�m�p���?����"�ܛ���/�����Ig5�1C  .$/���mk���1}F���U�� 8Zp!y�!og�o�i�'x~���jWO�p��HZd߂�T��Ly�'��͐e��*��[I��xWO�2y����F(�%��"�;���79��    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Run0.png-197eddc905e08d0c777dd4c13bc41c30.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Run0.png"
dest_files=[ "res://.import/Run0.png-197eddc905e08d0c777dd4c13bc41c30.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDST@   @            �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  UIDATx��[OhU�M�����PҥPl*�=�A0�+l������@/*4���i"���D�І��@��a5v���R�$�`��̛}gޛ7�)�,d����~�{���7`���>��p�Q�7�H���g��o� I�'��@�vH1|�x�]X���Іu�Z�cum����`����<���6�C-�O�f����P������	�(=��i3�	�{ 'iq�u�յm[�B6�+^�D�P�#�^d�^|�L���b,�	:S��L�ʽ�`b�#@x�5>؂�V"<km��Wapܼ ���-�M��&)���n
����4���(�+����bl�Зv�지Fn6ʅ�Q����������s_�"{t��7��4y/wu��#)`�Cq�02J��qP�''��rM�D�4YZ��M�m��"Yt�!-�|e�K����ϏM�&�
k�� 4��M���V�НK �|��pm�� @����X�l>�!0��^���Ŀx�9�Z��[��ю�\�S�>"ȡT�9��J4\l{�/@u������+!�Ϣ����@] �"!�=A ��IeHF��@��^E`�<�@� �2�'8ٱ��L3���s�|}{�/��{m�<6DAC�`�3�Q�N��si�$-A)��������O�/����p$��םK������!�P]/��oK��|�+߹�-s�r����0	|/PD2򪚀��W.��~��t�X��u:�Je08^��;�F��hb��˩%�ǩ U��k7P]/��ò������ �&�X�n�O3���� �s_��=��+�X�Nqa�h&����1� ��yB޵ ��� jt����t'���P�7L���80��T��!�����^�L�ᦦ�����#��*L�<��3R�"�� U3}] O����� ��w�^9�U�nܠA�T/�8 P%v9���`@� =*4�^���M  řf �LA@R���b��&Y TIF�Š��" ���v�>�x�S��QҠ�9y��'S � �" �;���2S-F#�u Au�j���c���zʴ �38>[���5��������ʴ`(ӂ���r��#�U�F�H�`�aY���^C�|s�K�ح!�A,�xdݛeP}�S	yj���'��/?�Z!��t�ܬ�m�3Պ�M?P�"��wF�5dO��yA���5n<�I"GF���cum�l�;��D��� ��\Hs�q����)�+0���$>�LbC��R>����'���m�X��@
��Z�rި	@<@F ��ω�sԋ�{7n2ݿ�ڿZM��1��^�я�]��}" ?���� yg��?yyn�Ƌ@O��?����_�D� �j��������� 8[�l`��U`X�9ˏ_����C�K��<�蘠�橿v���{��5� �)� ��ݸ�l[S L^��9O�  Pe��ń� �k����o�#�Z� ��x��B� {�ڻ�.ľ�	�4y@��t�p���H�{��모�x
�aj�а%���;�q!e��    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Run1.png-0c92c9a24b59f35d88eabc72e60383f3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Run1.png"
dest_files=[ "res://.import/Run1.png-0c92c9a24b59f35d88eabc72e60383f3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDST@   @            �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  LIDATx��ZAhTG�V�
��,����$��e���xh	�C$���Crр�\�`<(zh�xk���
�Kv1l�PAJh�C�`���;����{o޼�1�~ lfwf��{����?衇z���E��F�j]o◻Zֱ"�n�,�
a\ ��	∰[��  ��>����4טH�oE\Rh����s�~-����3$P̇�$*y2�5�%�y�vy�8*�=���3��bz��T B\�d]�:���tȗ��sȈ��<@	���;d�G nS��ȳȤS�u#��Al+|6+Wk(��O>�j�@<Q�\�Q�A16T�q�𙭎���x���<{Լ�H���(�W!?3=�{�m\�y��3��L��g�������L�����ӿN3ӳ�$��_��Ǫ�s��{ :��JO^���uB� R���PոkL���<_���y9wAW��J�H��^c�5^p� �k7o��/Ox���Ț �)��DB>�*�iP��R6�c���D�I�YY@���~�\��	�@�Z�R6��݅��kX��PIvm}����'�� �_���W㣞�c��:�Ӡ/��9�H���c���9�x���;h�hY��ǯ�~w���� [��&M��)@�\�����`ɳ�鶹�7�|�' ��G7jAP!��.:B�@�4!�~�4�o���G��@BT����cl<��W�s���\�6����b�,�� "Bi �
3>6�>,q�@�'IEY������X�
����O��!aJ��5��-�,��-/��\�#�$)�-�:Bŀ�A��Hy�'c}��U�B{)�I6���T�	<T5��#�&>1Obd��B/ ����~Bp�/VNA#���.`_�uu���+������6Wij��BHV���ʃ���
l�$bp�'�J��%�M�qvh��~�@�A�0�2��+}�4f@�@,y ��� @	Y�xz��vw�D%��)����˫/�بS�o��6�w��?����d���_�.��Aq����w��� �64���� �g���{����G`�q�&���L:��/G%Z�����|;�X!� ����� ��!o�"�Nſ"7P�m��x5n�-V� ��1u~3ӳ��ʂ�[���6����54;�X{�x��0?r������;F��$a��2`�	p�їׅ�u~/K>��#K&�a��7k�И�=�̤S"��� C�ZZ�{��s�����J��E��7��D���'O`+�`���^IM6U ���DE.7W��o�ҟI��J����s��~?.� ����fv    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Run2.png-ac956ca4e7d0d58784912494dd4edf4c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Run2.png"
dest_files=[ "res://.import/Run2.png-ac956ca4e7d0d58784912494dd4edf4c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDST@   @            =  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��[_HG�mZ	TEI8�K��'FL[��Rh���C�ZA�AHB�y	\8!�C,�B44�@*�T����,��p(�Ch�C���^�f�ݝ��ٝ]��:��o���o���������qmc��.�#Tt���G���<�WB h�^D�����ܚT>Bx�u�����U��9�j�J��^�����*[�G����z�~���ټ�W�~��Csd���qĀ*g;h�U> �� ���'H���G ?Jg��x��D�/��&�2��+��.��s��L2^������ H���e����6��~�g���<fP�``nO��B�����Y�/M\v<�x^j|��&���A"��E:���1��	�J�ݐI���Ay�v���[F�_��ֻ��
 �B�r��wgo��,��]��dt p��������w�5���� �7���. �b���'[7��� j�O�@&7Ű��	������j�z����xi���^`��cs�/���Kb4��a�^}�B��ơ��4�+�=�l6�����ba�d>�}��}1��<7!r�'[7�^ڏ���3�tqz ���w�;�],������HD��ʛ?�xXzY?�j��f�wK�c+B����hצ�9Do� p��"�ʭ>R����I52*�O���_-�B���8 0���4q���ʊ�sqz�N�b�*y�!@Ǒn�A ���s<�B�꼴�Ie�$z(҇�E&i������� ��Ղ�����q�&%�a/����B��A�dE���{�H��36��̎N^��u1���t|� :����5 @:��sy��2�2�ܕ� ��^���O"�6����U����Z��z'  ��_�\�<��L�Q��k�É�-�R�s�IgͣS�o���� Oސhqv�Bz' ���t���FɓE�T�'Z�$�]�~:��Q�
�,��iU���Ja���F�������H�����ëq�~�2���"�ƀ�3�s���13?�a^
���d��I��\����]?c9����W7�4fff��J�GH@�@o-�W�@�	�"t�V"_��q���*�*[J�ue@�� �K:.�甓M"X����2 ��l3�7����BG=�uB/�O��A�9�6�Q���Q�Zqkz�̖�[�������/�������:o�Z2F��Eж�&��Σrp�d��>W�W�7�KrHΪ�����%�_���p�<�ȩ���wY3���
�@1�x�,(�f��F[c��VK����V��s<v�]Y��m?G[c���s���y5M	�NJy7�v���XMB�)P�=�~Kl)������=�8����7C��ܠ�z��h�ٝ�g�� ?������\��Y% ���t%B�e)NE�\�-8گ����=)yI
-�����wU��,�. @~��S��\.�\�f�    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Run3.png-eb0a7000459de67c8fb5ecb4205b5fe3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Run3.png"
dest_files=[ "res://.import/Run3.png-eb0a7000459de67c8fb5ecb4205b5fe3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDST@   @            �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ZMH\W�^�,.HJ(�!�
�b�"�`
�@BL!E7�(ڀ]� *�.*Q�."��@���B�
Yg����R�)�E�P��żw�����{c�~00���{���s�=��� 8��^=��v�i�Y�Q7\��a#D]H�| S9����ٶ�� `.rr��<�-4�b�+]OH�f�o찗t�mL�I��"zloé� 7$�#�x�[P�s}c��:�ǝ �䝻��?�v#�����j ����{�$� *��k;�Lބ`�,�#?~k_~����bb$��o��1��J:m�W$������{|/axtH��X�O"Σ�TD"�/ ���G]���m��S�^�\ ]��]"w+_O �(1<��"�K����9��Υs�lP7Z����a����G�����z{���n;̷�V�\����4>}v��U���[�.����[G��4 �,Q��+A���7.���i\��-��YMb�B೗���}c�xB0��l
�l
��}�G��?�I0.\>�����j�]�I��{ ��|%�DcgPW��g�)�f���㵽�
����$���U,*�d�$�1�Z �|_f)�l
 ���䕠���Q�������L�|A�F(}���������@\���q#��Q�j	�4ߋ�(!$ 9����~�M��M~Vd��r�n�8�o��Ds �z������'�>s	[�g_]�D�(�2�~�چ�x�	hD86:�-�wדb�T�<!������9���0*�K�� P�\�� 2����0�d��mt�p���7'�  ��?J�e1�(��rH����V�:U\?�	�����\ �k 䖏D5� ����2=vw|��  87� ��F<�CP�\u�D �p���_�-0P���<]�Gl�K���J �̋�����.��,#O�Y�mb��G��L V �4�oMP!O��w���_ph$@�fH���cC8�}�|�A�0�(QˍR77�5]�� /���c�7C�Vv1���]��J�HL��&g�.��-s5�oX����<@�1��_q�{z���T0N����[Tػ�G_�/E��/(�Ԭ�D�(��s?%���n��v�2[�F��
�����0�C�554��f�6�b�o��Ӡb���dD��/��wk��  /�/@�	ll754��y �y�
 adT�X * �inܦ�F��p��@D�(М �B{B Bi�  C�'O�y�� ��	R�m6@��μ$!��]��y�Jh~]��	�ܸ[)�����lֹB��r @U��^�3����k��ɴT_�`����Pt�$A��R�4�L��x ����~�s@�k{|�x��l7�8�.y��������U��2    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Run4.png-8f314cb9339581be70fceb46cd3a09a4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Run4.png"
dest_files=[ "res://.import/Run4.png-8f314cb9339581be70fceb46cd3a09a4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDST@   @            i  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  IDATx��[QhE��5�J�@#}(T��,��4y��r}T���}�	�B#�"TH5��Z,Z0�)>L%9Bb�5^
�@���>�}���������?���A�:;;3�7����3S��Zh���/��:���7~s���P��V��&ϐF�}��P9�k�� �m�x�u�V�5l6v�I,���a�_,�paN^�$�@+�G���,s"$!.��tH3��r�dm��:9�_�$"� �5U�IMVB�mC��N����J_3"(���3��4 ��o%K���)ț��0R�� �,8�Eg#$�y�zc�����ɋ@Jg�|	�K����H+�uF���F� �r>�p�;�@{�e��/#oTh���E��S�z	����2L�V�z�jX� i"C}�8���
 ����w��T��Ty@d(��iz빶��qy�l	[s�  C儣Ae�-����2f{��g�6�0ۓ��
�'m�896"�+�E��%e��
T�E��ˤ;�ʾP p�'Z�N��?\_��[+w�o�煔��	T>@F��s¿W��B�4(�n�@����\��u�3�9�����М��맄2V.@�F��d	�/s�ΈĈ�ۨO �^^�I�_���{�Q��;@��^�ż0:�t�W=�_~=X���6�e�!h������kK���h���:��g�*��1eq�eH"��~��;θ��p}��E�=yd��7�p ���:��k ��F����t�|�
�����Gt�3�N�75��t�I�����H�B1'8��]�u%Ǘ��
�KįǄP��� ���� �c;a����W�bN�c��J_/遮��r�qfz
��&�2>R01���=i�1hG���%e�Q3�O� <;|o�H�$g�7��Q�sl)�k��g�,��d8p�G(��3�_���~�o���?%d�<6�+�,���?�'�J��\�P�t��avF�Y�@Y��O�m/rsW!����u(v��4L����&���k�!����y�|�x�#���� ���Smv�,^�{�_;-�[�fa�`Jdv��ʎP�^��7122l��İ��⾞o�W�b�c��2���A�%2;TA�	��梺��^t�6����Y-'ꪬ�[���D �ȹ����v�U ����r  �%����>j��c�݀U��� ڕ�ر�t���[��p�MU��n�uGUGS�4h5�j K��Y�A9
8�וV�)v3p`�Ex
3��"�V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Run7.png-b5d91388e8a54d997d898da9208486a3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Player/Run7.png"
dest_files=[ "res://.import/Run7.png-b5d91388e8a54d997d898da9208486a3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
       GDST�   �            �(  PNG �PNG

   IHDR   �   �   �o�   sRGB ���    IDATx��]Mh%Wv��_�����j$�-&¸�:��x�bH�bB6�d�E/Y���t��B��	�x�!�F�q���~q�n:���iMka	5)��+�z�ީS�ܺ�^�W%�~ $Uݪ�S��s���f���Cy)�=��{�� �����^�~�2`��`�����m� ��>��jX��3�-���j'�{��i�-��h�_��ypB��ft��e�~�h���ҏ�i�$`����v����	z��"�e�eaH��||�O��Ӥ����A6�Hv��36'��~��vJ� 2_T����۹q��X��Ʒ)����v�}�O�ϰ������A�9b��S��5�P���6����7XX�"�� ����aw�\���N���ʀ�m��޹��-�!�4�!�	�1$�x�f�^�~�
@g����E}����[ ��� S~�& 0`-�l����/F����\j�k��h�T�|�{O�5� ��<7p�eՂj�\��Dl8h��^91�.\���x�' �|o��!��q��1"�a��",����lm�$��o�"�k@P�}��� }�F�]�>Y^/�5���A2�4���`V8�[C�6e��#��.��F{��ǩ���;|���N؄ ��h���0̝�5!8�˖K���L��S��[s�vac������lb�!�L�U d� $�iDș�֒Bq[L�c)�6Nݼ���e���1/����{��=y�L��ЖI��6�Ƀ�D-S/����K��v{X�I�|���ɬ�y���wlOF��{�KІ@2��-��D�+^�gI����R�ϗṤ.zƪۧ>9Nk�zW���A6D�xɌ�ə|	_�R[����DL�kI!j�V �����'�2u� �fc������O��oܦ����@�m��S��wq�咏�*�M��S2R�����1������Nص�����9#|��/�r�
�.����璌����
����-�6�����魙W��s_�^G[f�S|���+2,�|�U����K;BF�e ��de��}��'�5_Њ�P�;T�Z�����lЇ&�~؊��غc�Ad�Ԯ�LE�����΄Rr�=�f��k��OM�Z]�ZuKF���y	�{O�1�pZ���,�r����̇�x@Ʉ\1���-mFJ���toϚq��VݒI�	���s���o\�=��t��G.��H��-�wY(����' c���҉��hB�&y�lݮ�R�G��x�ƕF�5%L��X�ʖy�>��^�vM�?���+�-j��iƎE�a�D��+�ʏ�;3���`sy��v����8�..�ƭ[�˂��%i�D�����Z��{o��~$����s=��4��ܻڢ�/�W�Me����)u�u�+ߑy��_�w�L��_9�f��"",�~�nXֳY\>.1��&�64f��G�����Դ��jO�a������?Ih���^�'d��`>�g�^��ݾu[�m��z�����K �W��8x؁H�H{E���7�ƾ���o�����˃���P�w�}��y9^Fc6�/)�,��b��
���@���m��C�,�L f=x���Ö�]"��iய�MY.��گu[�5&�����28���	S���Y����ZL�;�����C��ŀ�f�L�/�8Z�8�������j'Kؑ)#y��P�)3|����af�����hia$]�>@.h�$�(za�PZ�GJߩ��GK���a+g;�cK�W�BYL�kĄD,bƈ#)���vfɴ��cs��TErI��2G����� �� ,���GCu=#�����뇭���N�:!��c�H�����sD�-Z�
"�w�d����<��X'���&|�'�z'���ގ-Yr�ۃ~F*<�Yf�B.�r�kD��Vd�i�c���8���`?)��ϱ?��)��ayߺ3e���q�|eH��w_�ң�ݟD�2&`z�����FKѬ��~���a9b.�}�5NZҢHm���} 9�{��S�ݴ���/z��m*�F��o�����|�랼?\�G��F�e��'#���xKA`��]v�q�Gsd�����7�\B�h���}��/�����&��*	��$%��ŗ�紺��/�����ｔ�_���=Hs˸��{V�=�7��1˯ ;��+h��t�i٬,��,�=X\N�E�{��ܷ���Q�La㒄���Jv˽~G�6�IJ|`��UÑ�{���މ���C,=�_�JiKӘӒ��K�����;x�^���,����7z8|�52�O\�W�Ĺwɕ�krb�2;�F��|�iB����묥���ubmw%��X�`�f���d�����~g@a@"V��G�L&����Ĕ��Z�d\^��w_L'��	��w���T/��G2�{o�&��@�dN�|ցÓ{�fK�p��~�˃̒T�� ��U�	L8i�d9��œ������<�&���U�-�e���g��$�^�S�$�12�A�k׭g&�������_h ���Y��a�)z��~��Y'��}�,�UW�`_W[�x�w�}˷��j��L��H��Ŝ�83Z�3Y����?���v���)��̼��s��kXz�!�_r�O~3SF{��nُ��k����3E��*H�X,�-_�-�����Y�SG[�Nk���۾��Yp���c�eg����=��|;)���_~�����7?V_���/����a'�����F+�f��9�:o+�K{Ǥ����N��E+�n��1F�D�`�+i�R��RkZӐ���Œ��qF�͵œ�$����c�����Lʄ�����ϥDȉ�:���;?�<�>kf?x����կe���ǩ�TS����g�wRݜi�Ƙ�=���������M�������q�WxC�,���������R-NGrrԡ-S��߬�pN��V�@�t�A�r���>��}�+������O8�h��~�J����o~�&='	��?�?��2Ϭ���o?x>-�	�������6~��vXz�!���y���§%$oۤ�Ә�z䪀6���_����,�s�S�t�H��D2�+Pb��*�7T�Z&}��O���;��;�/}���t�ߏ7�9ob��WN�����M��2�뇭�����Trj.S��T2��  ����������7S��ó 
�3n���/��o����k�#j�#����Е����}���r��"�i�}�(���@?��~.X�+g�xsy�6`砅��9<�?K5m������,��F[��hoj�l��E�i��}����#
�u���aBy�� R݀�2BQd~��l�2aQ�O���+^Q��� Og��v�3����ޝ��^�%���	��K�uz�a��k�x��t1��>n���4����<"LЇ+����|��H�E��Y�E��Xyc|�&j�V氳�I���,�d*� �%�0�d����|�gC�%�[�+��L�W�O GaFl5C�'�Z���{�>�D�yE����V&�ZBg�Ɂ��op��t�I}SP���9aי�����o�V���?�z��JA9�����M�'�� �j�x^]:��_3jS�"�$L� �䇎�L���o��&���?2��e�� ��;	�~��x�oi��)a��8�02��[�&	x�ʛ�|%�Y��N��-T���A�e����ُ�%�lG>JL�J=���RA~{��& ��g��C��4{��O�[حՎL�!��&���Nr�<_����66Vc$ˬ,�c��g5�����ȓ��YG_H�����m�&�_��O}c_*m���#��[�a��ha�-׸�_[Lr����ȴ��Q�dW�\��-��� ���g�IN�F:^o�әO:�MGL�t�,M*4J9P� k	Y��/bn7"�[e���A������>>M����vL��螡 r}WΔVԀ�"i)�)��m�0����qT�|@��V� mH�h���<'l��r����R�U��x<KήG�yU}�
N��dP��d�|�E����h���5�������d�1�W5�
��I�|4(˔�>�:�F�KBNt[7c�-Y��+C6ň'y�Ƒ��\Ҏ��F�¿��ZF���Js���]�&�2g`Z'�d��8����0F�5-�(wR�_��D��l�L�1�M`�[X�����%��	����B'[����4��U��lwU"]�J�	-��$5!�۴Q�lI ��UiB�@	�L���$����|�V�Sjk����k���Pø1�����aX�7��,��cm��a�@D"���=��d)��?�ė	����'�rz��M������1?��Օ5�i5g`��WP\t�sA.� ��[�ȱ&b�>�1%ָ�W�7N����r�<�P֨}a)��jq�p���
�\�##�%���n,��4�p��FwҞ���w�IL�q�u}�x���b�$?���?e�DHCǂFdg�P�`��vj�`�$����F����2 D����D`�Mn�I'qQ%���R�&gqM�Db)��!�|C��|7����(Y��2�eWѴ�.��_�2�q�v:ΉP��5��T�)`3��W�p�U��ri����db�.��+��v;:��&Yu6<8���Ӛ�IW�����+�q����R�2(a��} I�@DV�}��O�:`�3f�����4H�3t���~~ߴ�����>9&/*�|]��sh�@Y�z���Y�ȗsm�+M�9���������E�P�	�
�[L��Wxa�lƵ��'\�>��3%E���#��]��!Д�'o��>˼ T"t$`�5$��֝��ʛ2-�� y�B�v6.�4kF���T�)�ʱ*sn���N�zf9!p�����v!H�f ��D���)�#]�i�������jv��$2�\�Z�"�=���p�JW#�׈�qZu���w<�[v�>����N�R�m݌��	u�ND�W[7��a�#`��m(4����g�䓱N�=�s#,j�#� �r���Z6�i�T�:�� #��c����Z	��5��<Z$���V�$�����i�J%��qm���	?��m(�Ybc5���y�h{Une#��<>��'G6��P"�D{Y���9�6{��n��HoIT>) ���|XQ�'��ql�v(�5���%h�(�-���'9���ݲ-���d�J��}X3&T�g�����X��>Dn���������E��ȌV�6���V�u #7���7f�%ަ�f���pE�>�T�2Ih9b,3��r��Qu�>�� $`\t�"�v^��]�g���ZFi��� �i!�{3:v�_�m,z�ᰈ�<II�����A6>RPS�O;MH�km�k��S�b��������r��;�f�s���j��1GKl��ZF�h��PD��Y��5��� =�uûv��yE:nF?��!(0I��1�A�>g-T���o\)�z��A�H��[U��!)���a�a�NV�������a˕'Ԑ�6�� ��s��O�y��v��M���*~)Q��[(�نq���(�&�:)��
�}E}J���YͺZ&�q%�fV�ag"y��J���G���~�Uy9���D�}YenڦIA9;��H�>��y\���������?0Sb9P=;��d(�}��۝fc�}k������p���Q�s)��kjaK�"��V�O�A
Q�?V���D�#ȶm.������p�v[�3	�(�I�n�e�ν��.=��䏵���a��o�6�V�z���+�����D L����ں����?r_��x�.��B��:瞰�<�Iz��d�p��<���������)[߬�:�,ZX�s��Zڹ�t}���gz��ut���SUm�R�7	�	E��&�S\om�l�t{�Q �2�(�.*��4���,���_�g�x� �q��7��˘�뫌�P%��*Z4ȥ�KRo�vr��H��Jϧl�~�/�e;7��)W-������x����_��[?�����~$M(�o6m��0\�+-˵|^��*���"�ХIL)uA3��$t�<a$�=w�������j�=!1�.;-X�0<S��Y�i
�&�K��1$o� kL���B1 �$�Ea<�RT:Ds�쪡�u}�hiq53
�o��M�8 p����e6�X�(_ �>�>#�ˈ������P�eI�I�R����U����6h��q �T�􎓿3����f4&����I�T�m���"��fɌ��1z�yE��?��b3ķ�~�����T�e~�R�3���������_��z��s>m�}u�����Z$0���2��-��64��s��g��+����(��L�L�4��5;�l��'�ޓg�KЄ0���գ²3��Q��`ﲤ/1�FA�������jg�'������=��~�����v��)�2��� ��Jac�{�,�%���ǌ�dK��%�{�,��Y'���Ė�A�����3V�o�i�G�v��Q# �J� ��b��/~�v��3���gO�rnb�����}�����K�)��/Y�Ikk�euF'���K�벓����\&����	� t[� ����l��3��tsy�=�����eBzNS�dr�'y�����#�x�TV�y�$�^�=U�Ѱ� �ѓ�\�kUmw�m��f��D�m�c)=�}��-&�=��# ��`�ϼMm��'6A͸_�RԊh�'���q�v��=�݅�P���*kA�?���u�Lѷ� ��)�w��:�u�C5g����q��=!yhf�4��$Ɉ�];-����{�W��r�Z��:�d\�޹��~Ȉ�q.❔�n�%qi���x�9���
E �C;��ڨ��j_YF�_�#E�{{���&�Фe��-'��q��޺C�#�m�g�4�cc��1���kfHUɜ\L(���5��n׊!��~z#�&W��A�l��p��^�]E3�d`����;;/���w���׻,�����$E��� ����@�ʗ"W��O�yL��-�����H+\D{ڱl�Nk���"*�� JC%$����U�SK.[f	Uv\��ߖġk{�~������v�Se}���'`i����OJI�q��㹈���i& ��"X����vS�����*a�����T���3�r͑$~��RpI!�	�	�G|��b`m�d�?��}9'�
���P��7;^�[�&Aʇ��A��1e�� ������̦V6�L^�+;����\d֯@>O�Z���;��ɲKF*���j�Ob#>6R�Әٱ&DD��O��~�&e�f��r�󔞙�T��m�
�q�<ѻ5o�/�Q�sZP�2�{sy`��Ī����Hc"� �2W{�kI�;s�Sڄ���/IC)5-N��D1 �]*���b)��n�\�15�7��_�A�wrIF����w��Zh��FFZsUˀ"�������>_�>Pt�oymF��>��2�P�Y��ӎ�{�,�(�m��V�G,��Ǔ�X��4D.s��O�|@���SR�,Èa�<2\�������7�4	x{m7���۷�v�L�Ǖ^ֻ�3\qUD'e���Ä�n��կ�HRNK+.���L���w|�i��Z[��������BUz�JG�dF�L�#�O&ABIT䵣��]4�~�q`{>'�Y(tƶ�$�v,��^��=�謪,5��AV�ͺl���=/��ET�2�r���1�sD����D������P;���VEO�rM[?�4�n?���{�I��F�*�;H2Ҹ����SNsd�L������P
4v<�V~�QG��5�ߜ8I�A�:����Ś�Gb���E��d�h�ߏ���<rY���gu2��:Sh���X��k��֢�u$eN��y��;�Jx0������\b����0�K3/��Y���$��p�2�(������T����%�u��^�a��:rZ:^��Tfc5�[�~��ċ�VИ81�0��-&��t��i�Җ��e�m�=�W�ě�l݌UU���1�D�2���!�  �IDATk��d:���'Lep}p鴬�����sQ��BŌ�a���+�8toR�����fG�[���؄l�ӂoߴ��1�X�P�T]b�P��<aae.�<�!e@ �3L>\9�c9ەa�}Pf,�XN��g���N^״�c���hٶ-�r�Ja�=��(�G�����.��E�e��c"a1۔��f�#�k>�u�,�[��˝��PwR*�n݌sn?��e�ˤ����ڕ�@&J¥���5��L��Iᚈ&]\���7�$�G���\\�����)VVM)���V�߸���X��$�;j��9D�i����~�
�C�u�4�ڔ�tj�)�}��oJ=�;�w&)�hp'd-0\�"&C@�⍕~>�Q �`�ˢb����L>w��Ч/ژh�c\��I1�H��Ɓ:qF]�U���|<"> 	d�p{B��Hf/d}A���'�6	�.k��>��U��լ٩�+�{��2�GS2��A�X���$�uY���*�����_�6�[s��KY�h��2}�ٴ��Y�"���[�m�e�ڽ�n��P��xT3Dζ�6�5�eт�qJ�LY��S���[�s)�|Q ����& ����O-?SA�Q��A5�ʀF�
�9��w^&�����ye>�y��.��Y�wF����:��H�.���X��B��+s  ~n����.�l�'F�:�����:�k��7�D�U�۴��_vgZ_HMP#Ԉ��5�*؉��u�Y7�����NG��R�X
�t�\zy<�����j��W�� J��0��Z;� 9�����ƷnƸ��]���.=*Y���۩vrsy����(��y����`�֓�����M���g ��o$C�u3δ�b���V�P ����zO��u36�׀�1���@BKf���>>��/�f�x>�^��q��2K�t1���(G�UN>���9ha��H�Y�G����ߥG�tJ�-��M�1"�S��K��U#i�|�~��q�7K�� m�{�>�d��4^��O����z0���0�AvZ9f�9h�39�(ĴڲJ���%��¼���|��Q7�qȶhm����P?*������iĚQ�σ+��^��5vmm����L
� e�]?���5��=�`�f��ݸ�/��$��*E���[UCJ
 ������Kj}g�~�>�9��P/*�j�GH	᠕���s#��kR�R5�[��^vo��[*�������R>�>T����-}���^P�ƣk��|�x�lS$��hi�����]���IʄM���:��$����-�kFeKPkI�	��Ԗ��֒oh���w�J��0)|ڢ�-0_P��{ �di1�D�s�}�0�&j��Վ���>���Ä��6z���E�G�l ���Y����c�.ڦ��4(s����YB���>�-��� /A�S{x9�����|(����ĺ��RoV��ji$L`<Mp�r'��A	ȝv0n@Sg@��d�{]�\�����I��v����DM�̲u.Le	*�H��uY�J91eƌ��6��FN䴬[[<I�I�ݔ	����F��}��GKJG������Τ�#LMZ��2=̚���asy����H�m��N�d��-l.�d�Z�P�c�� ;��<8������=I�ۃ>�޹V��c��Vۨ/�ܽs�P�H�`fX��f͐��R��&9bʴic��ۃ��	.`��EjV�\X������j_ھ7�ׂNpV�%�K�9�qA��j/�`{`�0Sl2d9P���T��n��"$�  d��>�&�}���d��)"`������Y����{�XF-ņ��b��Q�^-*b���(�����3 ��j���Y���=���V�z�W��ѽ��~�6a	� G��K��-�4R��z�E���� MM��.%	�u3J�N��0��I�E��#ϹR6��)/��1,�Bqt�IJ�fj��O�	���D����LM�̷
�X_��|��qF`��pCQ,#�!�i�������-	��D0[\�%h|��X����)�:6���(�4���|*��-�hi�#��g��@�t���x�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/JungleDirtTileSet.png-33d48d6808ea432feb082018ee05250b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Sprites/Tiles/JungleDirtTileSet.png"
dest_files=[ "res://.import/JungleDirtTileSet.png-33d48d6808ea432feb082018ee05250b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
 [gd_scene load_steps=4 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://WorldComplete.tscn" type="PackedScene" id=2]
[ext_resource path="res://JungleTS.tres" type="TileSet" id=3]

[node name="World" type="Node"]

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 64, 160 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 3 )
cell_size = Vector2( 32, 32 )
format = 1
tile_data = PoolIntArray( 327687, 0, 0, 327688, 1, 0, 327689, 1, 0, 327690, 1, 0, 327691, 1, 0, 327692, 1, 0, 327693, 2, 0, 393216, 0, 0, 393217, 1, 0, 393218, 1, 0, 393219, 1, 0, 393220, 1, 0, 393221, 1, 0, 393222, 1, 0, 393223, 4, 0, 393224, 4, 0, 393225, 4, 0, 393226, 4, 0, 393227, 4, 0, 393228, 4, 0, 393229, 5, 0, 458752, 3, 0, 458753, 4, 0, 458754, 4, 0, 458755, 4, 0, 458756, 4, 0, 458757, 4, 0, 458758, 4, 0, 458759, 4, 0, 458760, 4, 0, 458761, 4, 0, 458762, 4, 0, 458763, 4, 0, 458764, 4, 0, 458765, 4, 0, 458766, 1, 0, 458767, 1, 0, 458768, 1, 0, 458769, 1, 0, 458770, 1, 0, 458771, 2, 0, 524288, 3, 0, 524289, 4, 0, 524290, 4, 0, 524291, 4, 0, 524292, 4, 0, 524293, 4, 0, 524294, 4, 0, 524295, 4, 0, 524296, 4, 0, 524297, 4, 0, 524298, 4, 0, 524299, 4, 0, 524300, 4, 0, 524301, 4, 0, 524302, 4, 0, 524303, 4, 0, 524304, 4, 0, 524305, 4, 0, 524306, 4, 0, 524307, 5, 0, 589824, 3, 0, 589825, 4, 0, 589826, 4, 0, 589827, 4, 0, 589828, 4, 0, 589829, 4, 0, 589830, 4, 0, 589831, 4, 0, 589832, 4, 0, 589833, 4, 0, 589834, 4, 0, 589835, 4, 0, 589836, 4, 0, 589837, 4, 0, 589838, 4, 0, 589839, 4, 0, 589840, 4, 0, 589841, 4, 0, 589842, 4, 0, 589843, 5, 0, 655360, 6, 0, 655361, 7, 0, 655362, 7, 0, 655363, 7, 0, 655364, 7, 0, 655365, 7, 0, 655366, 7, 0, 655367, 7, 0, 655368, 7, 0, 655369, 7, 0, 655370, 7, 0, 655371, 7, 0, 655372, 7, 0, 655373, 7, 0, 655374, 7, 0, 655375, 7, 0, 655376, 7, 0, 655377, 7, 0, 655378, 7, 0, 655379, 8, 0 )
__meta__ = {
"_edit_lock_": true
}

[node name="WorldComplete" parent="." instance=ExtResource( 2 )]
position = Vector2( 544, 192 )
world_scene = "res://World2.tscn"
  [gd_scene load_steps=4 format=2]

[ext_resource path="res://JungleTS.tres" type="TileSet" id=1]
[ext_resource path="res://Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://WorldComplete.tscn" type="PackedScene" id=3]

[node name="World2" type="Node"]

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
cell_size = Vector2( 32, 32 )
format = 1
tile_data = PoolIntArray( 65535, 4, 0, 20, 3, 0, 131071, 4, 0, 65556, 3, 0, 196607, 4, 0, 131092, 3, 0, 262143, 4, 0, 196628, 3, 0, 327679, 4, 0, 262164, 3, 0, 393215, 4, 0, 327700, 3, 0, 458751, 4, 0, 393236, 3, 0, 524287, 4, 0, 458772, 3, 0, 589823, 4, 0, 524293, 0, 0, 524294, 1, 0, 524295, 1, 0, 524296, 1, 0, 524297, 1, 0, 524298, 1, 0, 524299, 1, 0, 524300, 1, 0, 524301, 1, 0, 524302, 1, 0, 524303, 1, 0, 524304, 1, 0, 524305, 1, 0, 524306, 1, 0, 524307, 1, 0, 524308, 2, 0, 655359, 4, 0, 589829, 3, 0, 589830, 4, 0, 589831, 4, 0, 589832, 4, 0, 589833, 4, 0, 589834, 4, 0, 589835, 4, 0, 589836, 4, 0, 589837, 4, 0, 589838, 4, 0, 589839, 4, 0, 589840, 4, 0, 589841, 4, 0, 589842, 4, 0, 589843, 4, 0, 589844, 5, 0, 720895, 4, 0, 655365, 3, 0, 655366, 4, 0, 655367, 4, 0, 655368, 4, 0, 655369, 4, 0, 655370, 4, 0, 655371, 4, 0, 655372, 4, 0, 655373, 4, 0, 655374, 4, 0, 655375, 4, 0, 655376, 4, 0, 655377, 4, 0, 655378, 4, 0, 655379, 4, 0, 655380, 5, 0, 786431, 4, 0, 720896, 1, 0, 720897, 1, 0, 720898, 1, 0, 720899, 1, 0, 720900, 1, 0, 720901, 3, 0, 720902, 4, 0, 720903, 4, 0, 720904, 4, 0, 720905, 4, 0, 720906, 4, 0, 720907, 4, 0, 720908, 4, 0, 720909, 4, 0, 720910, 4, 0, 720911, 4, 0, 720912, 4, 0, 720913, 4, 0, 720914, 4, 0, 720915, 4, 0, 720916, 5, 0 )

[node name="Player" parent="." instance=ExtResource( 2 )]
position = Vector2( 64, 320 )

[node name="WorldComplete" parent="." instance=ExtResource( 3 )]
position = Vector2( 480, 224 )
world_scene = "res://EndGame.tscn"
 GDSC            :      ���ׄ�   ���󶶶�   ����������Ӷ   ���������������Ŷ���   ����׶��   �����Ŷ�   ���������������������Ŷ�   ���϶���   ���Ӷ���   �������Ӷ���   �����������Ӷ���      *.tscn        Player                                                   $   	   ,   
   5      6      8      3YY8P�  R�  RQ;�  YY0�  P�  QV�  ;�  �  PQ�  �  )�  �  V�  &�  T�  �  V�  �	  PQT�
  P�  Q�  �  -Y`    [gd_scene load_steps=4 format=2]

[ext_resource path="res://WorldComplete.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=5]
extents = Vector2( 32, 32 )

[node name="WorldComplete" type="Area2D"]
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 5 )
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
              [remap]

path="res://KinematicBody2D.gdc"
      [remap]

path="res://PlayButton.gdc"
           [remap]

path="res://QuitButton.gdc"
           [remap]

path="res://RetryButton.gdc"
          [remap]

path="res://WorldComplete.gdc"
        �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         godotTutorial      application/run/main_scene         res://MainMenu.tscn    application/config/icon         res://icon.png     display/window/size/width      �     display/window/size/height      h     display/window/size/test_width            display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         expand  $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres  