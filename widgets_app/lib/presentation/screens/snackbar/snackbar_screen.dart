import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustmonSnackBAr( BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: (){}),
      duration: const Duration(seconds: 2),);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog( BuildContext context){
    showDialog(context: context, 
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: const Text('¿Estas seguro?'),
      content: const Text('Lorem laborum veniam commodo do fugiat cillum cillum deserunt aliquip tempor elit reprehenderit consequat.'),
      actions: [
        TextButton(onPressed: ()=>context.pop(), child: const Text('Cancelar')),
        FilledButton(onPressed: ()=>context.pop(), child: const Text('Cancelar'),)
      ],
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed: (){
              showAboutDialog(context: context,
              children: [
                const Text('Veniam magna id pariatur ipsum sint consectetur qui eu veniam non incididunt ex. Magna ullamco minim eiusmod reprehenderit commodo irure adipisicing culpa mollit nulla. Proident est laboris et magna commodo qui exercitation. Deserunt adipisicing nisi veniam aute esse magna ea eiusmod tempor proident sit dolor proident ullamco. Lorem fugiat minim et et veniam eu nisi elit cupidatat nisi adipisicing pariatur elit.')
              ]);
            }, child: const Text('Licencias usadas')),
            FilledButton.tonal(onPressed: ()=> openDialog(context), child: const Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: ()=> showCustmonSnackBAr(context), ),
    );
  }
}