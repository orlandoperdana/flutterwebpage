class Education {
  final String? name, study, years, gpa, description;

  Education({this.name, this.study, this.gpa, this.years, this.description});
}

List<Education> mockEducation = [
  Education(
    name: "Universitas Widyatama",
    study: "S1 Sistem Informasi",
    years: "2019",
    gpa: "3.52",
    description:
        "Analisis Layanan Teknologi Informasi Pendaftaran Tanah Sistematis Lengkap (PTSL) Menggunakan ITIL V3",
  ),
  Education(
    name: "Politeknik Pos Indonesia",
    study: "Diploma III Teknik Informatika",
    years: "2015",
    gpa: "3.42",
    description: "Aplikasi Game 3D First Person Shooter Platform\nWindows",
  ),
  Education(
    name: "SMA Negeri 2 Binjai",
    study: "IPA",
    years: "2012",
    gpa: "",
    description: "-",
  ),
];
