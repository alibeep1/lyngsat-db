import React from 'react'
import MyDiv from '../../components/MyDiv'
import { useForm, SubmitHandler, Controller } from "react-hook-form"
import { IUser, useUserStore } from '../../store/userstore'
import { Button, Input, NotificationArgsProps, notification } from 'antd'
import client, { ROUTES } from '../../API/client'
import { redirect } from 'react-router-dom'
// import { unstable_HistoryRouter } from 'react-router-dom'

// type  = {
//   example: string
//   exampleRequired: string
// }

// type NotificationPlacement = NotificationArgsProps['placement'];

const Login = () => {

  // const history = unstable_HistoryRouter()
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
    client.post(ROUTES[7], null, {
      params: {
        email: data.Email
      }
    }).then((response) => {
      console.log("RECEIVED SERVER RESPONSE: ", response.data);

      const user: IUser = {
        Email: response.data.Email,
        Location: response.data.Location,
        Region: response.data.Region,
        Longitude: response.data.Longitude
      };
      setUser(user);
      notification.success({
        message: 'Welcome Back',
        description: `You are signed in as ${response.data.Email}`,
        placement: 'bottomRight',

      });

      redirect('/')

    }).catch((error) => {
      notification.error({
        message: 'Oops',
        description: `Encountered error: ${error.response.data}`,
        placement: 'bottomRight',

      });
    })
  }
  // console.log(watch("Email")) // watch input value by passing the name of it


  return (
    <MyDiv style={{ height: '100%', }}>
      <h1 style={{ color: '#767B91' }}>
        Welcome back, user!
      </h1>
      <div style={{ backgroundColor: '#E1E5EE', width: '300px', height: '120px', borderRadius: '16px', display: 'flex', justifyContent: 'flex-start', alignItems: 'center', marginTop: '40px', paddingRight: '24px', paddingLeft: '24px' }}>

        <form onSubmit={handleSubmit(onSubmit)}>
          <label>Email</label>
          <Controller
            name="Email"
            control={control}
            rules={{ required: 'This field is required' }}
            render={({ field }) => <Input {...field} />}
          />
          {errors.Email && <span>{errors.Email.message}</span>}

          <Button type="default" htmlType="submit">Login</Button>

          {/* <Button type="default">Login</Button> */}
        </form>
      </div>
    </MyDiv>
  )
}

export default Login