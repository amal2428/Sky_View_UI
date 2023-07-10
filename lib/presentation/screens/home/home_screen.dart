import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/date_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool searchVisibility = true;
    TextEditingController searchTextController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            InkWell(
              child: Text(
                "Name",
                style: const TextStyle(color: Colors.white, fontSize: 35),
              ),
              onTap: () {
                // setState(() {
                searchVisibility = true;
                // });
              },
            ),
            const SizedBox(height: 20),

            Visibility(
              visible: searchVisibility,
              child: TextFormField(
                controller: searchTextController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            // findGeoLoc(searchTextController.text);
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            searchTextController.clear();
                            // setState(() {
                            searchVisibility = false;
                            // }
                            // );
                          },
                          icon: const Icon(
                            Icons.clear,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.white),
                ),
              ),
            ),

            //////
            const SizedBox(height: 80),
            const Row(
              children: [
                Text(
                  "Temp",

                  // widget.weatherObj?.main?.temp?.toStringAsFixed(0) == null
                  //     ? '--'
                  //     : widget.weatherObj!.main!.temp!.toStringAsFixed(0),

                  style: TextStyle(color: Colors.white, fontSize: 70),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '°C',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Weather",
                      // widget.weatherObj?.weather?[0].description == null
                      //     ? ''
                      //     : '${widget.weatherObj!.weather?[0].description}',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(
              '${DateTime.now().day} ${dateTimeToMonth(DateTime.now())} ${dateTimeToWeekDay(DateTime.now())}',
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CustomText(content: 'Feels like', size: 15),
                    CustomText(content: '${"feelsLike"}°C', size: 30),
                  ],
                ),
                Column(
                  children: [
                    CustomText(content: 'Humidity', size: 15),
                    CustomText(content: '${"humidity"}%', size: 30),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CustomText(content: 'NNE Wind', size: 15),
                    CustomText(content: "Visibility", size: 20),
                  ],
                ),
                Column(
                  children: [
                    CustomText(content: 'Max Temp', size: 15),
                    CustomText(content: '${"Max Temp"} °C', size: 20),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CustomText(content: 'Visibility', size: 15),
                    CustomText(content: "Visibilty", size: 20),
                  ],
                ),
                Column(
                  children: [
                    CustomText(content: 'Air pressure', size: 15),
                    CustomText(content: '${"Pressure"} hPa', size: 20),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
