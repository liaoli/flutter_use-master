import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_use/app/config/image_config.dart';
import 'package:flutter_use/app/ui/auto_ui.dart';
import 'package:flutter_use/toolkit/typedef/function.dart';

///搜索框 个人信息 设置等按钮
class HimalayaPersonalInfo extends StatelessWidget {
  const HimalayaPersonalInfo({
    Key? key,
    required this.onRefresh,
    required this.onLeftArrow,
    required this.onRightArrow,
    required this.onSetting,
    required this.onSkin,
    required this.onChanged,
  }) : super(key: key);

  ///左右箭头回调
  final ParamVoidCallback onLeftArrow;
  final ParamVoidCallback onRightArrow;

  ///刷新回调
  final ParamVoidCallback onRefresh;

  ///刷新回调
  final ParamVoidCallback onSkin;

  ///刷新回调
  final ParamVoidCallback onSetting;

  ///输入框输入监听
  final ParamSingleCallback<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return _buildBg(children: [
      //左图标
      _buildLeftArrow(),

      //右图标
      _buildRightArrow(),

      //刷新图标
      _buildRefresh(),

      //搜索框
      _buildSearch(),

      //头像
      _buildHeadImg(),

      //皮肤
      _buildSkin(),

      //设置
      _buildSetting(),
    ]);
  }

  Widget _buildRefresh() {
    return Container(
      margin: EdgeInsets.only(left: 30.dp),
      child: IconButton(
        icon: const Icon(Icons.autorenew, size: 16),
        onPressed: onRefresh,
      ),
    );
  }

  Widget _buildRightArrow() {
    return Container(
      margin: EdgeInsets.only(left: 30.dp),
      child: IconButton(
        icon: const Icon(Icons.arrow_forward_ios_outlined, size: 16),
        onPressed: onRightArrow,
      ),
    );
  }

  Widget _buildLeftArrow() {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios, size: 16),
      onPressed: onLeftArrow,
    );
  }

  Widget _buildSetting() {
    return Container(
      margin: EdgeInsets.only(left: 15.dp),
      child: IconButton(
        icon: const Icon(
          Icons.settings,
          color: Colors.grey,
          size: 20,
        ),
        onPressed: onSetting,
      ),
    );
  }

  Widget _buildSkin() {
    return Container(
      margin: EdgeInsets.only(left: 15.dp),
      child: IconButton(
        icon: const Icon(
          CupertinoIcons.sparkles,
          color: Colors.grey,
          size: 20,
        ),
        onPressed: onSkin,
      ),
    );
  }

  Widget _buildHeadImg() {
    return Container(
      margin: EdgeInsets.only(left: 15.dp),
      child: ClipOval(
        child: Image.network(
          ImageHimalayaConfig.headPic,
          height: 35.dp,
          width: 35.dp,
        ),
      ),
    );
  }

  Widget _buildSearch() {
    return Container(
      height: 30.dp,
      width: 300.dp,
      margin: EdgeInsets.symmetric(horizontal: 15.dp),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(36),
      ),
      child: Row(children: [
        //搜索图标
        Container(
          margin: EdgeInsets.only(left: 10.dp),
          child: const Icon(Icons.search, color: Colors.grey, size: 18),
        ),

        //输入框
        Container(
          width: 250.dp,
          padding: EdgeInsets.only(left: 12.dp),
          child: TextField(
            autofocus: false,
            textAlign: TextAlign.start,
            textInputAction: TextInputAction.search,
            decoration: const InputDecoration(
              ///较小空间时，使组件正常渲染，包括文本垂直居中
              isDense: true,
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(0.0),
            ),
            onChanged: onChanged,
          ),
        ),
      ]),
    );
  }

  Widget _buildBg({required List<Widget> children}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.dp, horizontal: 18.dp),
      width: 800.dp,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
