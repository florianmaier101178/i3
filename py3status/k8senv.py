import subprocess

class Py3status:

    def k8senv(self):
        output = subprocess.run(["bash", "-c", "/home/flo/.config/i3/py3status/k8senv.sh"], capture_output=True, text=True)
        return {
            'full_text': output.stdout
       }
