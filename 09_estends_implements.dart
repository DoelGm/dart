void main() {
  final windPlant = WindPlant(inicialEnergy: 100);
  final nuclearPlant = NuclearPlant(
    energyLeft: 1000,
  );

  double consumoEnergia(EnergyPlant plant) {
    if (plant.energyLeft < 10) {
      throw 'No hay energia we :(';
    }
    return plant.energyLeft - 10;
  }

  print('Wind: Energia restantes de es ${consumoEnergia(windPlant)}');
  print('Nuclear: Energia restantes de es ${consumoEnergia(nuclearPlant)}');
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  double inicialEnergy;

  WindPlant({required double this.inicialEnergy})
      : super(energyLeft: inicialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
