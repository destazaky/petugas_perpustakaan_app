import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PeminjamanView'),
          centerTitle: true,
        ),
        body: controller.obx((state) =>
            ListView.separated(itemBuilder: (context, index) {
              return ListTile(
                title: Text(state[index].user?.nama??"-"),
                subtitle: Text('Buku Yang Dipinjam ${state[index].book?.judul?? "-"}'),
              );
            }, separatorBuilder: (context, index){
              return Divider();
            },
                itemCount: state!.length))
    );
  }
}