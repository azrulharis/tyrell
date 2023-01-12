<?php

$data = array(
    array(
        'date' => '2022-01-12',
        'value' => 10,
    ),
    array(
        'date' => '2022-04-22',
        'value' => 3,
    ),
    array(
        'date' => '2021-12-22',
        'value' => 7,
    ),
);

foreach($data as $date) { 
    $data[] = array_multisort( array_column( $date, 'value' ), SORT_ASC);
} 

foreach($data as $date) {  
    $datefrom = date_create($date['date']);
    $res = date_format($datefrom, "F d, Y");
    echo $res . '<br/>'; 
}
 