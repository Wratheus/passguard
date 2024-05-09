import 'package:encrypt/encrypt.dart';
import 'package:flutter/services.dart';
import 'package:pointycastle/asymmetric/api.dart';

final class RSAProvider {
  static late final Encrypter _rsaEncrypt;

  static void init() async {
    final String keyStr = await rootBundle.loadString('assets/public.pem');

    final RSAAsymmetricKey rsaAsymmetricKey =
    RSAKeyParser().parse(keyStr);

    final RSAPublicKey publicKey = RSAPublicKey(
        rsaAsymmetricKey.modulus!, rsaAsymmetricKey.exponent!);

    _rsaEncrypt = Encrypter(
      RSA(
          publicKey: publicKey,
          encoding: RSAEncoding.OAEP),
    );
  }

  static Future<String> decode(Encrypted str) async => _rsaEncrypt.decrypt(str);
}
