// import React from 'react'
import React from 'react'
import MyDiv from '../../components/MyDiv'
import { useForm, SubmitHandler, Controller } from "react-hook-form"
import { IUser, useUserStore } from '../../store/userstore'
import { Button, Input, NotificationArgsProps, Select, notification } from 'antd'
import client, { ROUTES } from '../../API/client'
const Register = () => {
  const setUser = useUserStore((state) => state.updateUser)

  const {
    register,
    handleSubmit,
    watch,
    control,
    formState: { errors },
  } = useForm<IUser>()
  const onSubmit: SubmitHandler<IUser> = (data) => {
    console.log(data)
    client.post(ROUTES[8], {
      email: data.Email,
      location: data.Location,
      longitude: data.Longitude,
      region: data.Region

    }).then((response) => {
      console.log("RECEIVED SERVER RESPONSE: ", response.data);

      // const user: IUser = {
      //   Email: response.data.Email,
      //   Location: response.data.Location,
      //   Region: response.data.Region,
      //   Longitude: response.data.Longitude
      // };
      // setUser(user);

      notification.success({
        message: 'Successfully Registered',
        description: `Login with ${data.Email} to start your journey!`,
        placement: 'bottomRight',
      });
    }).catch((error) => {
      notification.error({
        message: 'Oops. Please, try again',
        description: `Encountered error: ${error.response.data}`,
        placement: 'bottomRight',

      });
    })
  }
  // console.log(watch("Email")) // watch input value by passing the name of it


  return (
    <MyDiv style={{ height: '100%', }}>
      <h1 style={{ color: '#767B91' }}>
        Register
      </h1>
      <div style={{ backgroundColor: '#E1E5EE', width: '320px', height: '240px', borderRadius: '16px', display: 'flex', justifyContent: 'flex-start', alignItems: 'center', marginTop: '40px', paddingRight: '24px', paddingLeft: '24px' }}>

        <form onSubmit={handleSubmit(onSubmit)}>
          <label>Email</label>
          <Controller
            name="Email"
            control={control}
            rules={{ required: 'This field is required' }}
            render={({ field }) => <Input {...field} />}
          />
          {errors.Email && <span>{errors.Email.message}</span>}

          <label>Location</label>
          <Controller
            name="Location"
            control={control}
            rules={{ required: 'This field is required' }}
            render={({ field }) => <Input {...field} />}
          />
          {errors.Location && <span>{errors.Location.message}</span>}

          <label>Longitude</label>
          <Controller
            name="Longitude"
            control={control}
            rules={{ required: 'This field is required' }}
            render={({ field }) => <Input {...field} />}
          />
          {errors.Longitude && <span>{errors.Longitude.message}</span>}


          <label>Region</label>
          <Controller
            name="Region"
            control={control}
            rules={{ required: 'This field is required' }}
            render={({ field }) => (
              <Select size='large' {...field}>
                <Select.Option value="asia">Asia</Select.Option>
                <Select.Option value="europe">Europe</Select.Option>
                <Select.Option value="atlantic">Atlantic</Select.Option>
                <Select.Option value="america">America</Select.Option>
              </Select>
            )}
          />
          {errors.Region && <span>{errors.Region.message}</span>}
          <br />
          <Button type="default" htmlType="submit">Register</Button>

          {/* <Button type="default">Login</Button> */}
        </form>
      </div>
    </MyDiv>
  )
}

export default Register