char array[] = {0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90};

void main()
{
    int i;
    TRISB = 0x00;
    TRISD = 0xFF;

    // Read last state from EEPROM (address 0)
    i = EEPROM_Read(0x00);
    if (i < 0 || i > 9) i = 0; // safety check in case of invalid EEPROM value

    PORTB = array[i];

    while (1)
    {
        if (PORTD.F0 == 0xFF)
        {
            delay_ms(200);
            if (PORTD.F0 == 0xFF)
            {
                if (i < 9)
                {
                    i++;
                    PORTB = array[i];
                    EEPROM_Write(0x00, i); // Save new state to EEPROM
                    delay_ms(10);          // Give EEPROM time to write
                }
            }
        }

        if (PORTD.F1 == 0xFF)
        {
            delay_ms(200);
            if (PORTD.F1 == 0xFF)
            {
                if (i > 0)
                {
                    i--;
                    PORTB = array[i];
                    EEPROM_Write(0x00, i); // Save new state to EEPROM
                    delay_ms(10);
                }
            }
        }
    }
}