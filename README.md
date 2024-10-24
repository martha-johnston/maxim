# maxim

Configure a `ds18b20` sensor to integrate a [DS18B20 1-wire digital temperature sensor](https://www.adafruit.com/product/381) into your machine:

### To use with Viam:
Navigate to the **CONFIGURE** tab of your machine's page in [the Viam app](https://app.viam.com).
Click the **+** icon next to your machine part in the left-hand menu and select **Component**.
Select the `sensor` type, then select the `maxim:ds18b20` module.
Enter a name or use the suggested name for your sensor and click **Create**.

Fill in the attributes as applicable to your sensor, according to the table below.

```json {class="line-numbers linkable-line-numbers"}
{
  "components": [
    {
      "name": "<your-ds18b20-sensor-name>",
      "model": "martha:maxim:ds18b20",
      "type": "sensor",
      "namespace": "rdk",
      "attributes": {
        "unique_id": "<your-sensor-unique-id>"
      },
      "depends_on": []
    }
  ]
}
```

The following attributes are available for `ds18b20` sensors:

<!-- prettier-ignore -->
| Attribute | Type | Required? | Description |
| --------- | ---- | --------- | ----------  |
| `unique_id`  | string | **Required** | The [unique 64-bit serial code](https://www.analog.com/media/en/technical-documentation/data-sheets/ds18b20.pdf) of your DS18B20 sensor. Laser engraved onto your sensor and available [programmatically](https://github.com/milesburton/Arduino-Temperature-Control-Library). Example: `"28EEB2B81D160127"`. Note that this ID will also be the last 16 digits of the [device file](https://en.wikipedia.org/wiki/Device_file) when the sensor is mounted in a Linux filesystem.  |

## Test the sensor

After you configure your sensor, open the sensor's **TEST** panel on the [**CONFIGURE**](/configure/) or [**CONTROL**](/fleet/control/) tabs.
To access detailed readings from your sensor, click on the **Get Readings** button.

## Next steps

Check out the [sensor API](/appendix/apis/components/sensor/)
