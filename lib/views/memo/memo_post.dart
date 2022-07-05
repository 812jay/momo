import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:momo/views/common/components/common_app_bar.dart';
import 'package:momo/views/common/components/nav_bar.dart';

class MemoPost extends StatelessWidget {
  static const routeName = '/memo/post';
  const MemoPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HtmlEditorController htmlEditorController = HtmlEditorController();
    return Scaffold(
      endDrawer: const NavBar(),
      appBar: commonAppBar(context: context, isLeading: true),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          padding: const EdgeInsets.only(bottom: 35.0, top: 20.0),
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.black),
          child: const Text(
            '작성',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Text('메모작성'),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        '제목',
                        style: TextStyle(
                          fontSize: 18.0,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(hintText: '제목을 입력해주세요.'),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        '폴더',
                        style: TextStyle(
                          fontSize: 18.0,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 15.0),
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: const Icon(
                            Icons.folder,
                            color: Colors.black,
                            size: 50.0,
                          ),
                        ),
                      ),
                      const Text(
                        '내용',
                        style: TextStyle(
                          fontSize: 18.0,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      ToolbarWidget(
                        controller: htmlEditorController,
                        htmlToolbarOptions: const HtmlToolbarOptions(
                          toolbarPosition: ToolbarPosition
                              .aboveEditor, //required to place toolbar anywhere!
                          toolbarType: ToolbarType.nativeGrid,
                          //other options
                        ),
                        callbacks: null,
                      ),
                      HtmlEditor(
                        controller: htmlEditorController,
                        htmlEditorOptions: const HtmlEditorOptions(
                          hint: "내용을 입력해주세요!",
                        ),
                        otherOptions: const OtherOptions(
                          height: 500,
                        ),
                        htmlToolbarOptions: HtmlToolbarOptions(
                          toolbarPosition: ToolbarPosition.custom,
                          mediaUploadInterceptor: (file, type) async {
                            debugPrint(file.name); //filename
                            debugPrint('${file.size}'); //size in bytes
                            debugPrint(
                              file.extension,
                            ); //file extension (eg jpeg or mp4)
                            return true;
                          },
                        ),
                      ),
                      const SizedBox(height: 60.0)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
