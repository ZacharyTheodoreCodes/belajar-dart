class PersegiPanjang {
  //_panjang -> hidden key
  double _panjang = 0;
  double _lebar = 0;

  //setter and getter (enkapsulasi)
  void setPanjang(double panjang) {
    if (panjang < 0) panjang * -1;
    _panjang = panjang;
  }

  double getPanjang() {
    return _panjang;
  }

  //method 2 : pake set dan get
  void set lebar(double lebar) {
    if (lebar < 0) lebar * -1;
    _lebar = lebar;
  }

  double get lebar {
    return _lebar;
  }

  double get luas => _panjang * _lebar;

  @override
  String toString() {
    return 'Persegi Panjang: Panjang=$_panjang, Lebar=$lebar, Luas=$luas';
  }
}
