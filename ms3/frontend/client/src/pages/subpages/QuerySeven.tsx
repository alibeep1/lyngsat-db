import React, { useEffect, useState } from "react";
import MyDiv from "../../components/MyDiv";
import { useForm, SubmitHandler, Controller } from "react-hook-form"
import { IFavChannel, IQueryOne, IQuerySeven, IUser, useUserStore } from "../../store/userstore";
import client, { ROUTES } from "../../API/client";
import { Input, notification, Button, Select } from "antd";
import generateColumns from "../../helpers/generateColumns";
import MyTable from "../../components/MyTable";
// import { Button } from "bootstrap";
// import { IUser, useUserStore } from '../../store/userstore'

const addToFav = (fav: IFavChannel): void => {
    client.post(ROUTES[9], null, {
        params: {
            email: fav.email,
            channel: fav.channel,
            satellite: fav.satellite,
            frequency: fav.frequency
        }
    }).then((response) => {
        console.log("RECEIVED SERVER RESPONSE: ", response.data);


        // setUser(user);
        notification.success({
            message: `Successfully Added!`,
            description: `${fav.channel} was added to your favourites list`,
            placement: 'bottomRight',

        });

        // redirect('/')

    }).catch((error) => {
        notification.error({
            message: 'Oops',
            description: `Encountered error: ${error.response.data}`,
            placement: 'bottomRight',

        });
    })
}

const QuerySeven = () => {
    const [data, setData] = useState([])
    const [columns, setColumns] = React.useState<{ title: string; dataIndex: string; key: string; }[]>([]);
    const [selectedChannel, setSelectedChannel] = useState({})

    const userEmail = useUserStore((state) => state.Email)

    useEffect(() => {

        const { Channel_name = "empty", Satellite_name = "empty", Frequency = "empty" } = selectedChannel;
        // console.log(`Selected Channel: ${Channel_name}, ${Satellite_name}, ${Frequency}`,)
        if (Channel_name != 'empty') {

            const favChannel: IFavChannel = {
                email: userEmail,
                channel: Channel_name,
                satellite: Satellite_name,
                frequency: Frequency
            }

            notification.info({
                message: `Add to Favourites?`,
                description: `Channel: ${Channel_name}, Satellite: ${Satellite_name}, Freq: ${Frequency}`,
                placement: 'top',
                btn: <Button type="primary" onClick={() => { addToFav(favChannel) }} >Yes</Button>

            });
        }
    }, [selectedChannel])
    const {
        register,
        handleSubmit,
        watch,
        control,
        formState: { errors },
    } = useForm<IQuerySeven>()

    const onSubmit: SubmitHandler<IQuerySeven> = (data) => {
        console.log(data)
        client.get(ROUTES[6], {
            params: {
                language: data.language,
                satellite: data.satellite,
                vidEncoding: data.vidEncoding,
                region: data.region
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
                btn: <Button>Ok</Button>

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
        <MyDiv style={{ marginTop: '0', paddingTop: '0', height: '100%' }}>
            <div style={{ backgroundColor: '#E1E5EE', width: '100%', height: '80px', borderTopLeftRadius: '16px', borderTopRightRadius: '16px', display: 'flex', flexDirection: 'row', justifyContent: 'flex-start', alignItems: 'center', paddingRight: '24px', paddingLeft: '24px' }}>

                <form onSubmit={handleSubmit(onSubmit)}>

                    <label>Region</label>
                    <Controller
                        name="region"
                        control={control}
                        // rules={{ required: 'This field is required' }}
                        render={({ field }) => (
                            <Select style={{ width: '20%' }} size='middle' {...field}>
                                <Select.Option value="">None</Select.Option>
                                <Select.Option value="asia">Asia</Select.Option>
                                <Select.Option value="europe">Europe</Select.Option>
                                <Select.Option value="atlantic">Atlantic</Select.Option>
                                <Select.Option value="america">America</Select.Option>
                            </Select>
                        )}
                    />
                    {errors.region && <span>{errors.region.message}</span>}

                    <label>Language</label>
                    <Controller
                        name="language"
                        control={control}
                        // rules={{ required: 'This field is required' }}
                        render={({ field }) => <Input style={{ width: '10%' }} {...field} />}
                    />
                    {errors.language && <span>{errors.language.message}</span>}

                    <label>Satellite</label>
                    <Controller
                        name="satellite"
                        control={control}
                        // rules={{ required: 'This field is required' }}
                        render={({ field }) => <Input style={{ width: '20%' }} {...field} />}
                    />
                    {errors.satellite && <span>{errors.satellite.message}</span>}

                    <label>Encoding</label>
                    <Controller
                        name="vidEncoding"
                        control={control}
                        // rules={{ required: 'This field is required' }}
                        render={({ field }) => (
                            <Select size='middle' style={{ width: '10%' }} {...field}>
                                <Select.Option value="">None</Select.Option>
                                <Select.Option value="hd">HD</Select.Option>
                                <Select.Option value="sd">SD</Select.Option>
                            </Select>
                        )}
                    />
                    {errors.vidEncoding && <span>{errors.vidEncoding.message}</span>}

                    <Button type="default" htmlType="submit">Filter</Button>

                    {/* <Button type="default">Login</Button> */}
                </form>
            </div>
            <MyTable columnNames={columns} data={data} style={{ height: '20px' }} setClickedRow={setSelectedChannel} />
        </MyDiv>
    )
}

export default QuerySeven;