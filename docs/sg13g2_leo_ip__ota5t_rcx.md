
# CACE Summary for sg13g2_leo_ip__ota5t

**netlist source**: rcx

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| DC gain              | ngspice              | a0                   |          10 V/V | 19.368 V/V |          any | 30.520 V/V |          any | 44.184 V/V |   Pass ✅    |
| Unity Gain Frequency | ngspice              | ugf                  |          1e6 Hz | 15660200.000 Hz |          any | 21245500.000 Hz |          any | 27319500.000 Hz |   Pass ✅    |
| Phase Margin         | ngspice              | pm                   |            60 ° |   85.345 ° |          any |   86.652 ° |          any |   88.471 ° |   Pass ✅    |
| DC gain MC           | ngspice              | a0                   |          10 V/V | 13.151 V/V |          any | 21.034 V/V |          any | 28.890 V/V |   Pass ✅    |
| Area                 | magic_area           | area                 |               ​ |          ​ |            ​ |          ​ |      600 µm² | 76.850 µm² |   Pass ✅    |
| Width                | magic_area           | width                |               ​ |          ​ |            ​ |          ​ |          any |   9.685 µm |   Pass ✅    |
| Height               | magic_area           | height               |               ​ |          ​ |            ​ |          ​ |          any |   7.935 µm |   Pass ✅    |
| Magic DRC            | magic_drc            | drc_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          0 |   Pass ✅    |
| Netgen LVS           | netgen_lvs           | lvs_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          0 |   Pass ✅    |
| KLayout DRC maximal  | klayout_drc          | drc_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          0 |   Pass ✅    |
| Antenna Checks       | magic_antenna_check  | antenna_violations   |               ​ |          ​ |            ​ |          ​ |            0 |          0 |   Pass ✅    |


## Plots

## gain_vs_temp

![gain_vs_temp](./sg13g2_leo_ip__ota5t/rcx/gain_vs_temp.png)

## ugf_vs_corner

![ugf_vs_corner](./sg13g2_leo_ip__ota5t/rcx/ugf_vs_corner.png)

## pm_vs_vdd

![pm_vs_vdd](./sg13g2_leo_ip__ota5t/rcx/pm_vs_vdd.png)

## gain_mc

![gain_mc](./sg13g2_leo_ip__ota5t/rcx/gain_mc.png)

## transient

![transient](./sg13g2_leo_ip__ota5t/rcx/transient.svg)
