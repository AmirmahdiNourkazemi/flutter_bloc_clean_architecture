import 'ara.dart';
import 'bre.dart';
import 'ces.dart';
import 'cym.dart';
import 'deu.dart';
import 'est.dart';
import 'fin.dart';
import 'fra.dart';
import 'hrv.dart';
import 'hun.dart';
import 'ita.dart';
import 'jpn.dart';
import 'kor.dart';
import 'nld.dart';
import 'per.dart';
import 'pol.dart';
import 'por.dart';
import 'rus.dart';
import 'slk.dart';
import 'spa.dart';
import 'srp.dart';
import 'swe.dart';
import 'tur.dart';
import 'urd.dart';
import 'zho.dart';

class Translations {
  Ara? ara;
  Bre? bre;
  Ces? ces;
  Cym? cym;
  Deu? deu;
  Est? est;
  Fin? fin;
  Fra? fra;
  Hrv? hrv;
  Hun? hun;
  Ita? ita;
  Jpn? jpn;
  Kor? kor;
  Nld? nld;
  Per? per;
  Pol? pol;
  Por? por;
  Rus? rus;
  Slk? slk;
  Spa? spa;
  Srp? srp;
  Swe? swe;
  Tur? tur;
  Urd? urd;
  Zho? zho;

  Translations({
    this.ara,
    this.bre,
    this.ces,
    this.cym,
    this.deu,
    this.est,
    this.fin,
    this.fra,
    this.hrv,
    this.hun,
    this.ita,
    this.jpn,
    this.kor,
    this.nld,
    this.per,
    this.pol,
    this.por,
    this.rus,
    this.slk,
    this.spa,
    this.srp,
    this.swe,
    this.tur,
    this.urd,
    this.zho,
  });

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        ara: json['ara'] == null
            ? null
            : Ara.fromJson(json['ara'] as Map<String, dynamic>),
        bre: json['bre'] == null
            ? null
            : Bre.fromJson(json['bre'] as Map<String, dynamic>),
        ces: json['ces'] == null
            ? null
            : Ces.fromJson(json['ces'] as Map<String, dynamic>),
        cym: json['cym'] == null
            ? null
            : Cym.fromJson(json['cym'] as Map<String, dynamic>),
        deu: json['deu'] == null
            ? null
            : Deu.fromJson(json['deu'] as Map<String, dynamic>),
        est: json['est'] == null
            ? null
            : Est.fromJson(json['est'] as Map<String, dynamic>),
        fin: json['fin'] == null
            ? null
            : Fin.fromJson(json['fin'] as Map<String, dynamic>),
        fra: json['fra'] == null
            ? null
            : Fra.fromJson(json['fra'] as Map<String, dynamic>),
        hrv: json['hrv'] == null
            ? null
            : Hrv.fromJson(json['hrv'] as Map<String, dynamic>),
        hun: json['hun'] == null
            ? null
            : Hun.fromJson(json['hun'] as Map<String, dynamic>),
        ita: json['ita'] == null
            ? null
            : Ita.fromJson(json['ita'] as Map<String, dynamic>),
        jpn: json['jpn'] == null
            ? null
            : Jpn.fromJson(json['jpn'] as Map<String, dynamic>),
        kor: json['kor'] == null
            ? null
            : Kor.fromJson(json['kor'] as Map<String, dynamic>),
        nld: json['nld'] == null
            ? null
            : Nld.fromJson(json['nld'] as Map<String, dynamic>),
        per: json['per'] == null
            ? null
            : Per.fromJson(json['per'] as Map<String, dynamic>),
        pol: json['pol'] == null
            ? null
            : Pol.fromJson(json['pol'] as Map<String, dynamic>),
        por: json['por'] == null
            ? null
            : Por.fromJson(json['por'] as Map<String, dynamic>),
        rus: json['rus'] == null
            ? null
            : Rus.fromJson(json['rus'] as Map<String, dynamic>),
        slk: json['slk'] == null
            ? null
            : Slk.fromJson(json['slk'] as Map<String, dynamic>),
        spa: json['spa'] == null
            ? null
            : Spa.fromJson(json['spa'] as Map<String, dynamic>),
        srp: json['srp'] == null
            ? null
            : Srp.fromJson(json['srp'] as Map<String, dynamic>),
        swe: json['swe'] == null
            ? null
            : Swe.fromJson(json['swe'] as Map<String, dynamic>),
        tur: json['tur'] == null
            ? null
            : Tur.fromJson(json['tur'] as Map<String, dynamic>),
        urd: json['urd'] == null
            ? null
            : Urd.fromJson(json['urd'] as Map<String, dynamic>),
        zho: json['zho'] == null
            ? null
            : Zho.fromJson(json['zho'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'ara': ara?.toJson(),
        'bre': bre?.toJson(),
        'ces': ces?.toJson(),
        'cym': cym?.toJson(),
        'deu': deu?.toJson(),
        'est': est?.toJson(),
        'fin': fin?.toJson(),
        'fra': fra?.toJson(),
        'hrv': hrv?.toJson(),
        'hun': hun?.toJson(),
        'ita': ita?.toJson(),
        'jpn': jpn?.toJson(),
        'kor': kor?.toJson(),
        'nld': nld?.toJson(),
        'per': per?.toJson(),
        'pol': pol?.toJson(),
        'por': por?.toJson(),
        'rus': rus?.toJson(),
        'slk': slk?.toJson(),
        'spa': spa?.toJson(),
        'srp': srp?.toJson(),
        'swe': swe?.toJson(),
        'tur': tur?.toJson(),
        'urd': urd?.toJson(),
        'zho': zho?.toJson(),
      };
}
