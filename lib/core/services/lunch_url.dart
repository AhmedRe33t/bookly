import 'package:bookapp/core/widgets/custom_toast.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLunchUrl(context,String? uri)async{
    if (uri!=null) {
  Uri url=Uri.parse(uri);
                  if ( await canLaunchUrl(url)) {
                  await launchUrl(url);
    }else{
  showToast('can not lunch $uri');
    }
}
}