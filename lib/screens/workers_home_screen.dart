import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/farm_provider.dart';
import '../models/farm.dart';
import 'workers_list_screen.dart';
import 'payments_list_screen.dart';
import 'loans_list_screen.dart';

class WorkersHomeScreen extends StatelessWidget {
  final Farm farm;

  const WorkersHomeScreen({super.key, required this.farm});

  @override
  Widget build(BuildContext context) {
    return Consumer<FarmProvider>(
      builder: (context, farmProvider, _child) {
        final updatedFarm = farmProvider.farms.firstWhere(
          (f) => f.id == farm.id,
          orElse: () => farm,
        );

        return Scaffold(
          appBar: AppBar(
            title: Text('Gestión de Trabajadores - ${updatedFarm.name}'),
            centerTitle: true,
            backgroundColor: updatedFarm.primaryColor,
            foregroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gestión de Trabajadores',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    _buildSectionCard(
                      context,
                      icon: Icons.people,
                      title: 'Lista de Trabajadores',
                      subtitle: '${updatedFarm.activeWorkersCount} activos',
                      color: Colors.blue,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WorkersListScreen(farm: updatedFarm),
                          ),
                        );
                      },
                    ),
                    _buildSectionCard(
                      context,
                      icon: Icons.payments,
                      title: 'Pagos',
                      subtitle: '${updatedFarm.payments.length} registros',
                      color: Colors.green,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentsListScreen(farm: updatedFarm),
                          ),
                        );
                      },
                    ),
                    _buildSectionCard(
                      context,
                      icon: Icons.account_balance_wallet,
                      title: 'Préstamos',
                      subtitle: '${updatedFarm.loans.length} registros',
                      color: Colors.orange,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoansListScreen(farm: updatedFarm),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSectionCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 32, color: color),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


