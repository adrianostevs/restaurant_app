import 'package:permission_handler/permission_handler.dart';
import 'package:restaurant_app/components/toast.dart';

class RequestPermission {
  Future<void> requestNotificationPermissions() async {
    // Check if notification permissions are already granted
    if (await Permission.notification.isGranted) {
      return;
    }

    // Request notification permissions
    var status = await Permission.notification.request();

    if (!status.isGranted) {
      ToastMessage.show('Silahkan izinkan kami untuk mengirimkan notifikasi');
    }
  }
}
