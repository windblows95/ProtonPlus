namespace ProtonPlus.Utils {
    public class HTTP {
        public static string GET (string url) {
            try {
                var session = new Soup.Session ();
                var message = new Soup.Message ("GET", url);
                session.set_user_agent ("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.246");
                Bytes bytes = session.send_and_read (message);
                return (string) bytes.get_data ();
            } catch (GLib.Error e) {
                stderr.printf (e.message + "\n");
                return "";
            }
        }

        public static int Download (string download_url, string download_path) {
            try {
                string url = download_url;
                string path = download_path;
                var file_from_http = GLib.File.new_for_uri (download_url);
                GLib.File local_file = GLib.File.new_for_path (download_path);
                file_from_http.copy (local_file, FileCopyFlags.OVERWRITE, null, (current, total) => {
                    Stores.Threads store = Stores.Threads.instance ();
                    store.ProgressBar = (current + 0.0d) / (total + 0.0d);
                });
                return 0;
            } catch (GLib.Error e) {
                stderr.printf (e.message + "\n");
                return 1;
            }
        }
    }
}
