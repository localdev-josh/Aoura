import "package:flutter/material.dart";

class FiltersWidget extends StatefulWidget {
  FiltersWidget({Key key, @required this.updateFilter}) : super(key: key);

  final Function updateFilter;

  @override
  State<StatefulWidget> createState() {
    return FiltersWidgetState();
  }
}

class FiltersWidgetState extends State<FiltersWidget> {
  Widget _buildBadge(title) {
    return Container(
      margin: const EdgeInsets.only(right: 6),
      child: GestureDetector(
        onTap: () {
          selectedFilter = title.toLowerCase();
          widget.updateFilter(title.toLowerCase());
        },
        child: RawChip(
          padding: EdgeInsets.all(16),
          label: Text(
            title,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3,
                fontSize: 15),
          ),
          labelStyle: TextStyle(
              color: selectedFilter == title.toLowerCase()
                  ? Colors.white
                  : Colors.black,
              fontSize: 14.0),
          backgroundColor: selectedFilter == title.toLowerCase()
              ? Colors.redAccent
              : Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
          ),
        ),
      ),
    );
  }

  String selectedFilter = "all";

  final List filters = [
    "All",
    "Open",
    "Closed",
    "Expired",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(left: 24, top: 27),
      alignment: Alignment.center,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        itemCount: filters.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildBadge(filters[index]);
        },
      ),
    );
  }
}
