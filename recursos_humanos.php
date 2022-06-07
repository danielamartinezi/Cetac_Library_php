<div class="row">
    <h1 class="text-center">Recursos Humanos</h1>
        <?php foreach ($libros as $datos):?>
        <div class="col">
          <a href="<?php echo $datos['link'] ?>" target="_BLANK"><img src="<?php echo $datos['imagen']; ?>" width="250px"></a>
        </div>
        <?php endforeach; ?>
      </div>z