import 'package:contacts/models/contato.model.dart';
import 'package:flutter/material.dart';

class EditorContatoView extends StatelessWidget {
  //Final por não ser modificado
  final ContatoModel model;

  const EditorContatoView({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model == null
            ? Text(
                "Novo Contato",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            : Text(
                "Alterar Contato",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
            child: Column(
          children: <Widget>[
            TextFormField(
              initialValue: model?.name,
            ),
            TextFormField(
              initialValue: model?.phone,
            ),
            TextFormField(
              initialValue: model?.email,
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 48,
              width: double.infinity,
              child: FlatButton.icon(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                icon: Icon(
                  Icons.save,
                  color: Theme.of(context).accentColor,
                ),
                label: Text(
                  "Salvar",
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
