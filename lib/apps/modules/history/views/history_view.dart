import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../shared/widget/loadingBaground.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            'Data Tanaman ${controller.idTanaman.value}',
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: DataTable(
                columns: const [
                  DataColumn(
                    label: Text('No'),
                  ),
                  DataColumn(
                    label: Text('Pixel'),
                  ),
                  DataColumn(
                    label: Text('Berat'),
                  ),
                  DataColumn(
                    label: Text('Tanggal'),
                  ),
                ],
                rows: List.generate(
                  controller.dataHistory.length,
                  (index) => DataRow(
                    cells: [
                      DataCell(
                        Center(child: Text('${index + 1}')),
                      ),
                      DataCell(
                        Center(
                          child: Text(
                            controller.dataHistory[index].attributes.pixel
                                .toString(),
                          ),
                        ),
                      ),
                      DataCell(
                        Center(
                          child: Text(
                            controller.dataHistory[index].attributes.weight
                                .toString(),
                          ),
                        ),
                      ),
                      DataCell(
                        Center(
                          child: Text(
                            controller.dataHistory[index].attributes.updated
                                .toString(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            controller.isLoading.value ? const LoadingBaground() : Container()
          ],
        ),
      ),
    );
  }
}
