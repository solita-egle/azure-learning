<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Docker</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body style="margin:0px;">
    <table style="width:100%; border-collapse:collapse; font:14px Arial,sans-serif;">
        <tr>
            <td colspan="2" style="padding:10px 20px; background-color:#007fff;">
                <h1 style="font-size:24px;">Knowledge Sharing</h1>
            </td>
        </tr>
        <tr style="height:170px;">
            <td style="width:20%; padding:20px; background-color:#e4e9ed; vertical-align: top;">
                <ul style="list-style:none; padding:0px; line-height:24px;">
                    <li><a href="#" style="color:#333;">Docker Instance</a></li>
                    <li><a href="#" style="color:#333;">Docker Registry</a></li>
                    <li><a href="#" style="color:#333;">Terraform</a></li>
                    <li><a href="#" style="color:#333;">Ansible</a></li>
                    <li><a href="#" style="color:#333;">Networking</a></li>
                    <li><a href="#" style="color:#333;">VM</a></li>
                    <li><a href="#" style="color:#333;">CI/CD</a></li>
                    <li><a href="#" style="color:#333;">Resource Group</a></li>
                    <li><a href="#" style="color:#333;">Database</a></li>
                </ul>
            </td>
            <td style="padding:20px; background-color:#F0FFFF; vertical-align:top;">
                <h2>Welcome to my site</h2>
                
                <?php
                // Initialize connection variables.
         

                // Initialize connection object.
                $connection = pg_connect("host=$host dbname=$database user=$user password=$password")
                            or die("Failed to create connection to database: ". pg_last_error(). "<br/>");

	            print "Successfully created connection to database $database. <br/>";


                ?>

<table class="table">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Topics to learn</th>
                </tr>
              </thead>
              <tbody>
              <?php
              $query = "SELECT * from lessons";
                $result_set = pg_query($connection, $query) ?>
                <?php if (pg_num_rows($result_set) > 0): ?>
                <?php while($array=pg_fetch_row($result_set)):
    
                    ?>
                <tr>
                    <th scope="row"><?php print $array[0];?></th>
                    <td><?php echo $array[1];?></td>
                </tr>
                <?php endwhile; ?>
                <?php else: ?>
                <tr>
                   <td colspan="3" rowspan="1" headers="">No Data Found</td>
                </tr>
                <?php endif; ?>
                <?php pg_free_result($result_set); ?>
              </tbody>
            </table>

            <?php
            // Free result_set
                //pg_free_result($result_set);

                // Closing connection
                pg_close($connection);

                ?>









            </td>
        </tr>
        <tr>
            <td colspan="2" style="padding:5px; background-color:#007fff; text-align:center;">
                <p>copyright &copy; eglepalk</p>
            </td>
        </tr>
    </table>
</body>
</html>