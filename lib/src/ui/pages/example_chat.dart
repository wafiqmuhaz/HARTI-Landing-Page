import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xetia_chat/xetia_chat.dart';
import 'package:xetia_models/xetia_models.dart';

class ExampleChat extends StatefulWidget {
  const ExampleChat({Key? key}) : super(key: key);

  @override
  State<ExampleChat> createState() => _ExampleChatState();
}

class _ExampleChatState extends State<ExampleChat> {
  bool _selectMode = false;
  int _index = 0;
  final _txtSearch = TextEditingController();
  final _scrollController = ScrollController();
  bool _showNewChatButton = true;
  final List<ChatRoom> _selectedIds = [];

  @override
  void dispose() {
    _scrollController.dispose();
    _txtSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatRoomList(
        isSelectionMode: _selectMode,
        selectedChatRooms: _selectedIds,
        onSelectionModeChanged: (value) {
          setState(() {
            _selectMode = value;
          });
        },
        onSelected: (chatRoom, isSelected) {
          setState(() {
            if (isSelected) {
              if (!_selectedIds.contains(chatRoom)) {
                _selectedIds.add(chatRoom);
              }
            } else {
              if (_selectedIds.contains(chatRoom)) {
                _selectedIds.remove(chatRoom);
              }

              if (_selectedIds.isEmpty) {
                _selectMode = false;
              }
            }
          });
        },
        showNewChatButton: _showNewChatButton,
        filter: (context, rooms) {
          final list = rooms.where(
            (element) => element.partnerName.toLowerCase().contains(
                  _txtSearch.text.toLowerCase(),
                ),
          );

          switch (_index) {
            case 1:
              return list
                  .where(
                    (element) =>
                        element.unreadCount != null && element.unreadCount! > 0,
                  )
                  .toList();

            case 2:
              return list.where((element) => element.isPrivate).toList();

            case 3:
              return list.where((element) => element.isGroup).toList();

            case 4:
              return list.where((element) => element.isEntityUser).toList();

            default:
              return list.toList();
          }
        },
        chatButtonReplacement: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              mini: true,
              onPressed: () {
                _scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOutExpo,
                );
              },
              child: const Icon(CupertinoIcons.chevron_up),
            ),
          ],
        ),
      ),
    );
  }
}
