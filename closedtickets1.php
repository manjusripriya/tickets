<?php
                include('config.php');
                ?>


                <?php
                $sql = "select * from glpi_tickets";
                $result=mysqli_query($conn,$sql);
                $row=mysqli_fetch_array($result) ?>
                <p>Opening Date @ Time: <?php echo $row['date']; ?></p>
                <p>Ticket.No: <?php echo $row['id']; ?></p>
                 <p>Subject: <?php echo $row['name'] ;?></p>
                  <p>Description: <?php echo $row['content'] ;?></p>
                  <p>Status: <?php
                  if ($row['status']=='1') {
                            echo "on prograss";
                          }
                          elseif ($row['status']=='2') {
                           echo "New";
                          } ?>
                   </p>
                  
                  
               
                  
                <?php  

                 ?>