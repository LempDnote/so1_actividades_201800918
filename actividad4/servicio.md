Es necesario descargar el archivo hello.sh
y brindarle servicios
```bash
chmod -x hello.sh
```


Para installar el servicio es necesario descargar el archivo y introducirlo dentro de la siguiente ruta

```bash
/etc/systemd/system/
```

agregar el archivo hello.service
dentro del directorio mencionado

**Recargar el demonio de systemd**
```bash
sudo systemctl daemon-reload
```

**Habilitar el servicio**
```bash
sudo sustemctl start hello.service
```


**Verificar el estado**
```bash
sudo systemctl status hello.service
```


***Verificar los logs***
```bash
tail -f ~/saludo.log
```