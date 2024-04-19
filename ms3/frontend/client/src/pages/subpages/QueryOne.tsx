import React, { useState } from "react";
import MyDiv from "../../components/MyDiv";
import { useForm, SubmitHandler, Controller } from "react-hook-form"
import { IQueryOne, IUser } from "../../store/userstore";
import client, { ROUTES } from "../../API/client";
import { Input, notification, Button } from "antd";
import generateColumns from "../../helpers/generateColumns";
import MyTable from "../../components/MyTable";
// import { Button } from "bootstrap";
// import { IUser, useUserStore } from '../../store/userstore'


const QueryOne = () => {
    const [data, setData] = useState([])
    const [columns, setColumns] = React.useState<{ title: string; dataIndex: string; key: string; }[]>([]);

    const {
        register,
        handleSubmit,
        watch,
        control,
        formState: { errors },
    } = useForm<IQueryOne>()

    const onSubmit: SubmitHandler<IQueryOne> = (data) => {
        console.log(data)
        client.get(ROUTES[0], {
            params: {
                longitude: data.longitude
            }
        }).then((response) => {
            console.log("RECEIVED SERVER RESPONSE: ", response.data.result);
            setData(response.data.result)
            let colNames = generateColumns(response.data.result)
            setColumns(colNames)

            notification.success({
                message: 'Great',
                // description: `You are signed in as ${response.data.Email}`,
                placement: 'bottomRight',

            });

            // redirect('/')

        }).catch((error) => {
            notification.error({
                message: 'Oops',
                description: `Encountered error: ${error}`,
                placement: 'bottomRight',

            });
        })
    }
    return (
        <MyDiv style={{ height: '100%' }}>
            <div style={{ backgroundColor: '#E1E5EE', width: '100%', height: '80px', borderTopLeftRadius: '16px', borderTopRightRadius: '16px', flexDirection: 'row', display: 'flex', justifyContent: 'flex-start', alignItems: 'center', paddingRight: '24px', paddingLeft: '24px' }}>

                <form onSubmit={handleSubmit(onSubmit)}>
                    <label>Longitude</label>
                    <Controller
                        name="longitude"
                        control={control}
                        rules={{ required: 'This field is required' }}
                        render={({ field }) => <Input style={{ width: '20%' }} {...field} />}
                    />
                    {errors.longitude && <span>{errors.longitude.message}</span>}

                    <Button type="default" htmlType="submit">Fetch Result</Button>

                    {/* <Button type="default">Login</Button> */}
                </form>
            </div>
            <MyTable columnNames={columns} data={data} style={{ height: '20px' }} />
        </MyDiv>
    )
}

export default QueryOne;