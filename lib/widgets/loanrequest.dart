import 'package:flutter/material.dart';

class LoanRequestDialog extends StatelessWidget {
  final List<String> loanTypes = ['ABEYAN SUGU', 'Other Type']; // Add other loan types here
  final List<String> beneficiaries = ['Nandy kassoke', 'Other Beneficiary']; // Add other beneficiaries here

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(Icons.request_page),
          SizedBox(width: 8),
          Text('Demande de prêt'),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Type de prêt'),
              items: loanTypes.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {},
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Bénéficiaire'),
              items: beneficiaries.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {},
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Montant',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nombre de jours',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Taux d\'intérêt',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Motif du prêt',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Fermer'),
        ),
        ElevatedButton.icon(
          onPressed: () {
            // Add submit functionality here
          },
          icon: Icon(Icons.send),
          label: Text('Envoyer'),
        ),
      ],
    );
  }
}
