Benchmark

This benchmark compares different UUID redaction implementations.


## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i9-9900K CPU @ 3.60GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">16</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">15.58 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.15.5</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">26.0.2</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">5 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">1 s</td>
  </tr>
</table>

## Statistics



__Input: Concated UUIDs (--1x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">2275.36 K</td>
    <td style="white-space: nowrap; text-align: right">0.44 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;3565.16%</td>
    <td style="white-space: nowrap; text-align: right">0.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">0.60 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">1784.01 K</td>
    <td style="white-space: nowrap; text-align: right">0.56 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;3788.44%</td>
    <td style="white-space: nowrap; text-align: right">0.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">0.80 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">614.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.63 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;838.17%</td>
    <td style="white-space: nowrap; text-align: right">1.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.60 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">589.57 K</td>
    <td style="white-space: nowrap; text-align: right">1.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;787.25%</td>
    <td style="white-space: nowrap; text-align: right">1.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.10 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap; text-align: right">506.48 K</td>
    <td style="white-space: nowrap; text-align: right">1.97 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;579.63%</td>
    <td style="white-space: nowrap; text-align: right">2.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.70 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap; text-align: right">497.34 K</td>
    <td style="white-space: nowrap; text-align: right">2.01 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;549.94%</td>
    <td style="white-space: nowrap; text-align: right">2.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.90 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap; text-align: right">347.04 K</td>
    <td style="white-space: nowrap; text-align: right">2.88 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;384.78%</td>
    <td style="white-space: nowrap; text-align: right">2.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4.50 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">344.36 K</td>
    <td style="white-space: nowrap; text-align: right">2.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;389.20%</td>
    <td style="white-space: nowrap; text-align: right">2.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4.40 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap;text-align: right">2275.36 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">1784.01 K</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">614.67 K</td>
    <td style="white-space: nowrap; text-align: right">3.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">589.57 K</td>
    <td style="white-space: nowrap; text-align: right">3.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap; text-align: right">506.48 K</td>
    <td style="white-space: nowrap; text-align: right">4.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap; text-align: right">497.34 K</td>
    <td style="white-space: nowrap; text-align: right">4.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap; text-align: right">347.04 K</td>
    <td style="white-space: nowrap; text-align: right">6.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">344.36 K</td>
    <td style="white-space: nowrap; text-align: right">6.61x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">0.70 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap">1.19 KB</td>
    <td>1.69x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">1.58 KB</td>
    <td>2.24x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">1.58 KB</td>
    <td>2.24x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap">1.58 KB</td>
    <td>2.24x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap">1.58 KB</td>
    <td>2.24x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap">1.45 KB</td>
    <td>2.06x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">1.45 KB</td>
    <td>2.06x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">33</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap">41</td>
    <td>1.24x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">241</td>
    <td>7.3x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">241</td>
    <td>7.3x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap">244</td>
    <td>7.39x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap">244</td>
    <td>7.39x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap">85</td>
    <td>2.58x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">84</td>
    <td>2.55x</td>
  </tr>
</table>


__Input: No Match (--1x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">1237.81 K</td>
    <td style="white-space: nowrap; text-align: right">0.81 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2404.80%</td>
    <td style="white-space: nowrap; text-align: right">0.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">0.80 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap; text-align: right">1234.38 K</td>
    <td style="white-space: nowrap; text-align: right">0.81 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2459.76%</td>
    <td style="white-space: nowrap; text-align: right">0.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">0.80 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">605.96 K</td>
    <td style="white-space: nowrap; text-align: right">1.65 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;722.44%</td>
    <td style="white-space: nowrap; text-align: right">1.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.40 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap; text-align: right">604.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.65 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1068.39%</td>
    <td style="white-space: nowrap; text-align: right">1.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.40 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">598.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.67 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1061.47%</td>
    <td style="white-space: nowrap; text-align: right">1.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.40 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap; text-align: right">591.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.69 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;817.87%</td>
    <td style="white-space: nowrap; text-align: right">1.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.80 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">144.05 K</td>
    <td style="white-space: nowrap; text-align: right">6.94 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;95.54%</td>
    <td style="white-space: nowrap; text-align: right">6.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">22.60 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">74.99 K</td>
    <td style="white-space: nowrap; text-align: right">13.34 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;37.90%</td>
    <td style="white-space: nowrap; text-align: right">12.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">30.20 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap;text-align: right">1237.81 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap; text-align: right">1234.38 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">605.96 K</td>
    <td style="white-space: nowrap; text-align: right">2.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap; text-align: right">604.31 K</td>
    <td style="white-space: nowrap; text-align: right">2.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">598.54 K</td>
    <td style="white-space: nowrap; text-align: right">2.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap; text-align: right">591.71 K</td>
    <td style="white-space: nowrap; text-align: right">2.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">144.05 K</td>
    <td style="white-space: nowrap; text-align: right">8.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">74.99 K</td>
    <td style="white-space: nowrap; text-align: right">16.51x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">0.27 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap">0.27 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">3.45 KB</td>
    <td>12.97x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap">3.46 KB</td>
    <td>13.03x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">3.46 KB</td>
    <td>13.03x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap">3.45 KB</td>
    <td>12.97x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">18.60 KB</td>
    <td>70.03x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap">39.77 KB</td>
    <td>149.74x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">37</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap">38</td>
    <td>1.03x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">282</td>
    <td>7.62x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap">283</td>
    <td>7.65x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">282</td>
    <td>7.62x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap">283</td>
    <td>7.65x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">340</td>
    <td>9.19x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap">798</td>
    <td>21.57x</td>
  </tr>
</table>


__Input: Plain English (--1x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">295.81 K</td>
    <td style="white-space: nowrap; text-align: right">3.38 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;264.10%</td>
    <td style="white-space: nowrap; text-align: right">3.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.60 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap; text-align: right">291.18 K</td>
    <td style="white-space: nowrap; text-align: right">3.43 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;336.33%</td>
    <td style="white-space: nowrap; text-align: right">2.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">9.10 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">281.70 K</td>
    <td style="white-space: nowrap; text-align: right">3.55 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;288.19%</td>
    <td style="white-space: nowrap; text-align: right">2.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">10.20 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap; text-align: right">275.99 K</td>
    <td style="white-space: nowrap; text-align: right">3.62 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;330.65%</td>
    <td style="white-space: nowrap; text-align: right">2.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">10.10 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">230.27 K</td>
    <td style="white-space: nowrap; text-align: right">4.34 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;228.91%</td>
    <td style="white-space: nowrap; text-align: right">4.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">9.84 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">191.92 K</td>
    <td style="white-space: nowrap; text-align: right">5.21 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;154.73%</td>
    <td style="white-space: nowrap; text-align: right">4.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">10.30 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap; text-align: right">188.25 K</td>
    <td style="white-space: nowrap; text-align: right">5.31 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;157.20%</td>
    <td style="white-space: nowrap; text-align: right">5.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">9.50 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">147.70 K</td>
    <td style="white-space: nowrap; text-align: right">6.77 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;90.30%</td>
    <td style="white-space: nowrap; text-align: right">6.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">21.80 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap;text-align: right">295.81 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap; text-align: right">291.18 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">281.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap; text-align: right">275.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">230.27 K</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">191.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap; text-align: right">188.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">147.70 K</td>
    <td style="white-space: nowrap; text-align: right">2.0x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">5.25 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap">5.25 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">5.70 KB</td>
    <td>1.08x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap">5.70 KB</td>
    <td>1.08x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap">14.02 KB</td>
    <td>2.67x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">1.52 KB</td>
    <td>0.29x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap">1.52 KB</td>
    <td>0.29x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">16.98 KB</td>
    <td>3.24x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">609</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap">612</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">644</td>
    <td>1.06x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap">645</td>
    <td>1.06x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap">285</td>
    <td>0.47x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">179</td>
    <td>0.29x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap">180</td>
    <td>0.3x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">318</td>
    <td>0.52x</td>
  </tr>
</table>


__Input: URL Path (--1x)__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">437.86 K</td>
    <td style="white-space: nowrap; text-align: right">2.28 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;552.74%</td>
    <td style="white-space: nowrap; text-align: right">2.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.20 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">397.87 K</td>
    <td style="white-space: nowrap; text-align: right">2.51 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;565.98%</td>
    <td style="white-space: nowrap; text-align: right">2.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4.10 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">397.55 K</td>
    <td style="white-space: nowrap; text-align: right">2.52 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;485.62%</td>
    <td style="white-space: nowrap; text-align: right">2.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4.20 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap; text-align: right">393.70 K</td>
    <td style="white-space: nowrap; text-align: right">2.54 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;538.19%</td>
    <td style="white-space: nowrap; text-align: right">2.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">373.75 K</td>
    <td style="white-space: nowrap; text-align: right">2.68 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;454.86%</td>
    <td style="white-space: nowrap; text-align: right">2.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap; text-align: right">370.23 K</td>
    <td style="white-space: nowrap; text-align: right">2.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;413.81%</td>
    <td style="white-space: nowrap; text-align: right">2.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.70 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">273.83 K</td>
    <td style="white-space: nowrap; text-align: right">3.65 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;325.69%</td>
    <td style="white-space: nowrap; text-align: right">3.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5.50 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap; text-align: right">265.17 K</td>
    <td style="white-space: nowrap; text-align: right">3.77 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;194.84%</td>
    <td style="white-space: nowrap; text-align: right">3.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5.90 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap;text-align: right">437.86 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap; text-align: right">397.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap; text-align: right">397.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap; text-align: right">393.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap; text-align: right">373.75 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap; text-align: right">370.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap; text-align: right">273.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap; text-align: right">265.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.65x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">6.46 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap">8.01 KB</td>
    <td>1.24x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">2.98 KB</td>
    <td>0.46x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap">2.98 KB</td>
    <td>0.46x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">3.08 KB</td>
    <td>0.48x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap">3.08 KB</td>
    <td>0.48x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">1.89 KB</td>
    <td>0.29x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap">1.89 KB</td>
    <td>0.29x</td>
  </tr>
</table>



Reduction Count

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NimbleParsec.redact!/1</td>
    <td style="white-space: nowrap">131</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">NimbleParsec2.redact!/1</td>
    <td style="white-space: nowrap">169</td>
    <td>1.29x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/2</td>
    <td style="white-space: nowrap">383</td>
    <td>2.92x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist.redact/1</td>
    <td style="white-space: nowrap">386</td>
    <td>2.95x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/2</td>
    <td style="white-space: nowrap">391</td>
    <td>2.98x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Charlist2.redact/1</td>
    <td style="white-space: nowrap">394</td>
    <td>3.01x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/2</td>
    <td style="white-space: nowrap">119</td>
    <td>0.91x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">RegEx.redact/1</td>
    <td style="white-space: nowrap">120</td>
    <td>0.92x</td>
  </tr>
</table>