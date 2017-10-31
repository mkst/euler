// 17. Number letter counts

/setup look-up arrays
ones:("";"one";"two";"three";"four";"five";"six";"seven";"eight";"nine")
teen:("ten";"eleven";"twelve";"thirteen";"fourteen";"fifteen";"sixteen";"seventeen";"eighteen";"nineteen")
tens:("";"";"twenty";"thirty";"forty";"fifty";"sixty";"seventy";"eighty";"ninety")

/works from 1..9999
text:{
  T:x div 1000;           / Thousands
  h:(x mod 1000) div 100; / hundreds
  t:(x mod 100) div 10;   / tens
  u:x mod 10;             / units
  txt:"";
  if[T;
    txt,:ones[T],"thousand",$[max (h;t;u);"and";""]
    ];
  if[h;
    txt,:ones[h],"hundred",$[max (t;u);"and";""]
    ];
  if[t;
    $[t=1;
      :txt,:teen[u]; / return as no units
      txt,:tens[t]]
    ];
  if[u;
    txt,:ones[u]
    ];
  txt
  }

/convert 1..1000 to text and count
count raze text 1 + til 1000
/21124