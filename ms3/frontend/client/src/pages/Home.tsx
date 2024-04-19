import React, { useState } from 'react'
import { useUserStore } from '../store/userstore.ts'
import MyDiv from '../components/MyDiv.tsx'

import { Tabs } from 'antd';
import type { TabsProps } from 'antd';
import client, { ROUTES } from '../API/client.js';
import QueryOne from './subpages/QueryOne.tsx';
import QueryTwo from './subpages/QueryTwo.tsx';
import QueryThree from './subpages/QueryThree.tsx';
import QueryFour from './subpages/QueryFour.tsx';
import QueryFive from './subpages/QueryFive.tsx';
import QuerySix from './subpages/QuerySix.tsx';
import QuerySeven from './subpages/QuerySeven.tsx';





const Home = () => {
  const user = useUserStore(state => state);
  const [selectedTab, setSelectedTab] = useState('0')

  const items: TabsProps['items'] = [
    {
      key: '0',
      label: 'Channels by Longitude',
      children: <QueryOne />,
    },
    {
      key: '1',
      label: 'Available Favs by Region',
      children: <QueryTwo selectedTab={selectedTab} />,
    },
    {
      key: '2',
      label: 'Top 5 Providers',
      children: <QueryThree />,
    },
    {
      key: '3',
      label: 'Top Rockets',
      children: <QueryFour />,
    },
    {
      key: '4',
      label: 'Top Satellites by Growth',
      children: <QueryFive />,
    },
    {
      key: '5',
      label: 'Top Channels per Language',
      children: <QuerySix />,
    },
    {
      key: '6',
      label: 'Filter Channels',
      children: <QuerySeven />,
    },
  ];

  const onChange = (key: string) => {
    // console.log(key);
    setSelectedTab(key);
  };
  if (user.Email == 'empty') {
    return <h4>You are signed out</h4>
  }

  return (
    <MyDiv>
      <h3>Welcome, {user.Email}</h3>
      <Tabs defaultActiveKey="1" items={items} onChange={onChange} />
    </MyDiv>
  )
}

export default Home