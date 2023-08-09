import 'package:flutter/material.dart';

class SubsOrderScreen extends StatefulWidget {
  const SubsOrderScreen({super.key});

  static const routeName = '/order-subs';

  @override
  State<SubsOrderScreen> createState() => _SubsOrderScreenState();
}

class _SubsOrderScreenState extends State<SubsOrderScreen> {
  var selectedPacket = "Pilih Paket Langganan";
  var packetList = [
    "Pilih Paket Langganan",
    "1 Bulan - Rp20.000",
    "3 Bulan - Rp50.000",
    "6 Bulan - Rp80.000",
  ];

  @override
  Widget build(BuildContext context) {
    var txtTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Berlangganan",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Akses seluruh majalah tanpa batas dengan berlangganan.",
                  style: txtTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                // Input Form
                Text(
                  "Jenis Paket *",
                  style: txtTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    ),
                  ),
                  validator: (value) =>
                      value == null ? "Pilih salah satu paket" : null,
                  value: selectedPacket,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedPacket = newValue!;
                    });
                  },
                  items: packetList.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                ),

                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Metode Pembayaran *",
                  style: txtTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_balance),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Bank Transfer"),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_balance_wallet),
                          SizedBox(
                            width: 10,
                          ),
                          Text("E-Wallet"),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.credit_card),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Virtual Account"),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.store),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Gerai Tunai"),
                        ],
                      ),
                      Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Nomor Whatsapp *",
                  style: txtTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    prefixIcon: Icon(Icons.phone),
                    labelText: "0812345...",
                    hintText: "0812345...",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      side: const BorderSide(color: Colors.black),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Text("Berlangganan Sekarang"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
