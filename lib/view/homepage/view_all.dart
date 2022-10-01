import 'package:flutter/material.dart';
import 'package:kartaa_app/constant/app_size.dart';
import 'package:kartaa_app/constant/constant.dart';
import 'package:kartaa_app/model/services_model.dart';

class ViewAllService extends StatefulWidget {
  const ViewAllService({Key? key}) : super(key: key);

  @override
  State<ViewAllService> createState() => _ViewAllServiceState();
}

class _ViewAllServiceState extends State<ViewAllService> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Our all Services")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.pagePadding),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 0,
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.98,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Card(
                      child: Stack(
                        children: [
                          Container(
                              color: Colors.grey[400],
                              child: Image.asset(
                                ourServices[index].image,
                                fit: BoxFit.cover,
                                height: 180,
                                width: 180,
                              )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ourServices[index].service_name,
                                  style: kLargeTextStyle,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  childCount: ourServices.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
