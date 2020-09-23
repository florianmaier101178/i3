import subprocess

class Py3status:

    def lanStatus(self):
        output = subprocess.run(["bash", "-c", "/home/flo/.config/i3/py3status/lanStatus.sh"], capture_output=True, text=True)
        return {
            'full_text': output.stdout
       }
