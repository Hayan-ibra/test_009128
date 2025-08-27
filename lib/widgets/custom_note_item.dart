import 'package:flutter/material.dart';
import 'package:notes_app/models/NoteModel.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({required this.model, super.key});

  final NoteModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: model.backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              // LEFT SIDE (Title + Subtitle)
              Expanded(
                flex: 3, // ~75% width
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      model.noteTitle,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      model.noteContent,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              // RIGHT SIDE (Delete Icon + Timestamp)
              Expanded(
                flex: 1, // ~25% width
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Delete icon in middle-right
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.delete, color: Colors.grey.shade700),
                      ),
                    ),

                    // Timestamp bottom-right
                    Text(
                      model.timeStamp.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
