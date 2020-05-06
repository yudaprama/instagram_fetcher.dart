import 'package:flutter/material.dart';


class PhotoGrid extends StatefulWidget {
  final List<String> photos;
  final List<String> selectedPhotos;
  final Function(String) onPhotoTap;

  PhotoGrid({
    @required this.photos,
    @required this.selectedPhotos,
    @required this.onPhotoTap,
  });

  @override
  PhotoGridState createState() => PhotoGridState();
}

class PhotoGridState extends State<PhotoGrid> {
  bool _isSelected(String photo) {
    return widget.selectedPhotos.indexOf(photo) != -1;
  }

  Widget _buildPhotoCell(String photo) {
    return GestureDetector(
      onTap: () => widget.onPhotoTap(photo),
      child: Stack(
        children: [
          Positioned.fill(
            child: FadeInImage(
              image: NetworkImage("https://www.instagram.com/p/$photo/media/?size=m"),
              placeholder: AssetImage(
                'assets/loading.gif',
                package: 'instagramfetcher',
              ),
              fit: BoxFit.cover,
            ),
          ),
          _isSelected(photo)
              ? Positioned(
            bottom: 5.00,
            right: 5.00,
            child: Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          )
              : null,
        ].where((o) => o != null).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 48),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: List.generate(widget.photos.length, (index) {
          return Padding(
            padding: EdgeInsets.all(8.00),
            child: _buildPhotoCell(widget.photos[index]),
          );
        }),
      ),
    );
  }
}
