classdef pedulum_gui < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                  matlab.ui.Figure
        TabGroup                  matlab.ui.container.TabGroup
        Tab                       matlab.ui.container.Tab
        replay                    matlab.ui.control.Button
        exit                      matlab.ui.control.Button
        play                      matlab.ui.control.Button
        start                     matlab.ui.control.Button
        Panel                     matlab.ui.container.Panel
        rotation_mode             matlab.ui.control.DropDown
        Label_76                  matlab.ui.control.Label
        length_data               matlab.ui.control.NumericEditField
        Label_5                   matlab.ui.control.Label
        mu_data                   matlab.ui.control.NumericEditField
        Label_4                   matlab.ui.control.Label
        J_data                    matlab.ui.control.NumericEditField
        Label_3                   matlab.ui.control.Label
        car_mass_data             matlab.ui.control.NumericEditField
        EditField_4Label          matlab.ui.control.Label
        mass_data                 matlab.ui.control.NumericEditField
        Label_2                   matlab.ui.control.Label
        Panel_3                   matlab.ui.container.Panel
        sample_time_data          matlab.ui.control.NumericEditField
        EditField_4Label_72       matlab.ui.control.Label
        observer_checkbox         matlab.ui.control.CheckBox
        sim_mode_choose           matlab.ui.control.DropDown
        Label_12                  matlab.ui.control.Label
        disturbance_rate_data     matlab.ui.control.NumericEditField
        EditField_4Label_9        matlab.ui.control.Label
        disturbance_amp_data      matlab.ui.control.NumericEditField
        EditField_4Label_8        matlab.ui.control.Label
        init_angle_data           matlab.ui.control.NumericEditField
        EditField_4Label_7        matlab.ui.control.Label
        init_position_data        matlab.ui.control.NumericEditField
        EditField_4Label_6        matlab.ui.control.Label
        step_data                 matlab.ui.control.NumericEditField
        EditField_4Label_3        matlab.ui.control.Label
        time_data                 matlab.ui.control.NumericEditField
        EditField_4Label_2        matlab.ui.control.Label
        state_txt                 matlab.ui.control.Label
        Panel_2                   matlab.ui.container.Panel
        signal_choose             matlab.ui.control.DropDown
        Label_8                   matlab.ui.control.Label
        EditField_4Label_10       matlab.ui.control.Label
        controller_choose         matlab.ui.control.DropDown
        DPanel                    matlab.ui.container.Panel
        motion_fig                matlab.ui.control.UIAxes
        SimulinkPanel             matlab.ui.container.Panel
        export_result             matlab.ui.control.Button
        hide_nonlinear            matlab.ui.control.Button
        hide_linear               matlab.ui.control.Button
        Label_10                  matlab.ui.control.Label
        Label_9                   matlab.ui.control.Label
        position_fig              matlab.ui.control.UIAxes
        angle_fig                 matlab.ui.control.UIAxes
        filedir_txt               matlab.ui.control.EditField
        editfile                  matlab.ui.control.Button
        exportfile                matlab.ui.control.Button
        openfile                  matlab.ui.control.Button
        Label_11                  matlab.ui.control.Label
        Tab_2                     matlab.ui.container.Tab
        LQRPanel                  matlab.ui.container.Panel
        Label_71                  matlab.ui.control.Label
        LQR_dx                    matlab.ui.control.NumericEditField
        EditField_4Label_63       matlab.ui.control.Label
        LQR_x                     matlab.ui.control.NumericEditField
        EditField_4Label_62       matlab.ui.control.Label
        LQR_dtheta                matlab.ui.control.NumericEditField
        EditField_4Label_61       matlab.ui.control.Label
        LQR_theta                 matlab.ui.control.NumericEditField
        EditField_4Label_60       matlab.ui.control.Label
        Label_66                  matlab.ui.control.Label
        LQR_r                     matlab.ui.control.NumericEditField
        EditField_4Label_50       matlab.ui.control.Label
        LQR_q4                    matlab.ui.control.NumericEditField
        EditField_4Label_49       matlab.ui.control.Label
        LQR_q3                    matlab.ui.control.NumericEditField
        EditField_4Label_48       matlab.ui.control.Label
        LQR_q2                    matlab.ui.control.NumericEditField
        EditField_4Label_47       matlab.ui.control.Label
        LQR_q1                    matlab.ui.control.NumericEditField
        EditField_4Label_46       matlab.ui.control.Label
        LQRLabel_2                matlab.ui.control.Label
        Panel_6                   matlab.ui.container.Panel
        Label_70                  matlab.ui.control.Label
        state_observer_dx         matlab.ui.control.NumericEditField
        EditField_4Label_37       matlab.ui.control.Label
        state_observer_x          matlab.ui.control.NumericEditField
        EditField_4Label_36       matlab.ui.control.Label
        state_observer_dtheta     matlab.ui.control.NumericEditField
        EditField_4Label_35       matlab.ui.control.Label
        state_observer_theta      matlab.ui.control.NumericEditField
        EditField_4Label_34       matlab.ui.control.Label
        s4Panel_3                 matlab.ui.container.Panel
        iLabel_12                 matlab.ui.control.Label
        Label_34                  matlab.ui.control.Label
        s4_image_3                matlab.ui.control.NumericEditField
        s4_real_3                 matlab.ui.control.NumericEditField
        s3Panel_3                 matlab.ui.container.Panel
        iLabel_11                 matlab.ui.control.Label
        Label_33                  matlab.ui.control.Label
        s3_image_3                matlab.ui.control.NumericEditField
        s3_real_3                 matlab.ui.control.NumericEditField
        s2Panel_3                 matlab.ui.container.Panel
        iLabel_10                 matlab.ui.control.Label
        Label_32                  matlab.ui.control.Label
        s2_image_3                matlab.ui.control.NumericEditField
        s2_real_3                 matlab.ui.control.NumericEditField
        s1Panel_3                 matlab.ui.container.Panel
        iLabel_9                  matlab.ui.control.Label
        Label_31                  matlab.ui.control.Label
        s1_image_3                matlab.ui.control.NumericEditField
        s1_real_3                 matlab.ui.control.NumericEditField
        Label_30                  matlab.ui.control.Label
        Label_29                  matlab.ui.control.Label
        Panel_5                   matlab.ui.container.Panel
        Label_69                  matlab.ui.control.Label
        out_feedback_x            matlab.ui.control.NumericEditField
        EditField_4Label_25       matlab.ui.control.Label
        out_feedback_theta        matlab.ui.control.NumericEditField
        EditField_4Label_23       matlab.ui.control.Label
        s4Panel_2                 matlab.ui.container.Panel
        iLabel_8                  matlab.ui.control.Label
        Label_26                  matlab.ui.control.Label
        s4_image_2                matlab.ui.control.NumericEditField
        s4_real_2                 matlab.ui.control.NumericEditField
        s3Panel_2                 matlab.ui.container.Panel
        iLabel_7                  matlab.ui.control.Label
        Label_25                  matlab.ui.control.Label
        s3_image_2                matlab.ui.control.NumericEditField
        s3_real_2                 matlab.ui.control.NumericEditField
        s2Panel_2                 matlab.ui.container.Panel
        iLabel_6                  matlab.ui.control.Label
        Label_24                  matlab.ui.control.Label
        s2_image_2                matlab.ui.control.NumericEditField
        s2_real_2                 matlab.ui.control.NumericEditField
        s1Panel_2                 matlab.ui.container.Panel
        iLabel_5                  matlab.ui.control.Label
        Label_23                  matlab.ui.control.Label
        s1_image_2                matlab.ui.control.NumericEditField
        s1_real_2                 matlab.ui.control.NumericEditField
        Label_22                  matlab.ui.control.Label
        Label_21                  matlab.ui.control.Label
        Panel_4                   matlab.ui.container.Panel
        Label_68                  matlab.ui.control.Label
        s4Panel                   matlab.ui.container.Panel
        iLabel_4                  matlab.ui.control.Label
        Label_18                  matlab.ui.control.Label
        s4_image                  matlab.ui.control.NumericEditField
        s4_real                   matlab.ui.control.NumericEditField
        s3Panel                   matlab.ui.container.Panel
        iLabel_3                  matlab.ui.control.Label
        Label_17                  matlab.ui.control.Label
        s3_image                  matlab.ui.control.NumericEditField
        s3_real                   matlab.ui.control.NumericEditField
        s2Panel                   matlab.ui.container.Panel
        iLabel_2                  matlab.ui.control.Label
        Label_16                  matlab.ui.control.Label
        s2_image                  matlab.ui.control.NumericEditField
        s2_real                   matlab.ui.control.NumericEditField
        s1Panel                   matlab.ui.container.Panel
        iLabel                    matlab.ui.control.Label
        Label_15                  matlab.ui.control.Label
        s1_image                  matlab.ui.control.NumericEditField
        s1_real                   matlab.ui.control.NumericEditField
        Label_14                  matlab.ui.control.Label
        Label_13                  matlab.ui.control.Label
        state_feedback_dx         matlab.ui.control.NumericEditField
        EditField_4Label_14       matlab.ui.control.Label
        state_feedback_x          matlab.ui.control.NumericEditField
        EditField_4Label_13       matlab.ui.control.Label
        state_feedback_dtheta     matlab.ui.control.NumericEditField
        EditField_4Label_12       matlab.ui.control.Label
        state_feedback_theta      matlab.ui.control.NumericEditField
        EditField_4Label_11       matlab.ui.control.Label
        Tab_4                     matlab.ui.container.Tab
        LQRPanel_2                matlab.ui.container.Panel
        Label_75                  matlab.ui.control.Label
        LQR_dx_2                  matlab.ui.control.NumericEditField
        EditField_4Label_67       matlab.ui.control.Label
        LQR_x_2                   matlab.ui.control.NumericEditField
        EditField_4Label_66       matlab.ui.control.Label
        LQR_dtheta_2              matlab.ui.control.NumericEditField
        EditField_4Label_65       matlab.ui.control.Label
        LQR_theta_2               matlab.ui.control.NumericEditField
        EditField_4Label_64       matlab.ui.control.Label
        LQR_gain_1                matlab.ui.control.NumericEditField
        EditField_4Label_59       matlab.ui.control.Label
        LQR_gain_2                matlab.ui.control.NumericEditField
        EditField_4Label_58       matlab.ui.control.Label
        LQR_gain_3                matlab.ui.control.NumericEditField
        EditField_4Label_57       matlab.ui.control.Label
        LQR_gain_4                matlab.ui.control.NumericEditField
        EditField_4Label_56       matlab.ui.control.Label
        Label_45                  matlab.ui.control.Label
        Label_67                  matlab.ui.control.Label
        Panel_11                  matlab.ui.container.Panel
        observer_gain_12          matlab.ui.control.NumericEditField
        EditField_4Label_71       matlab.ui.control.Label
        observer_gain_22          matlab.ui.control.NumericEditField
        EditField_4Label_70       matlab.ui.control.Label
        observer_gain_32          matlab.ui.control.NumericEditField
        EditField_4Label_69       matlab.ui.control.Label
        observer_gain_42          matlab.ui.control.NumericEditField
        EditField_4Label_68       matlab.ui.control.Label
        Label_74                  matlab.ui.control.Label
        observer_gain_1           matlab.ui.control.NumericEditField
        EditField_4Label_45       matlab.ui.control.Label
        observer_gain_2           matlab.ui.control.NumericEditField
        EditField_4Label_44       matlab.ui.control.Label
        observer_gain_3           matlab.ui.control.NumericEditField
        EditField_4Label_43       matlab.ui.control.Label
        observer_gain_4           matlab.ui.control.NumericEditField
        EditField_4Label_42       matlab.ui.control.Label
        Label_36                  matlab.ui.control.Label
        Label_35                  matlab.ui.control.Label
        state_observer_dx_2       matlab.ui.control.NumericEditField
        EditField_4Label_41       matlab.ui.control.Label
        state_observer_x_2        matlab.ui.control.NumericEditField
        EditField_4Label_40       matlab.ui.control.Label
        state_observer_dtheta_2   matlab.ui.control.NumericEditField
        EditField_4Label_39       matlab.ui.control.Label
        state_observer_theta_2    matlab.ui.control.NumericEditField
        EditField_4Label_38       matlab.ui.control.Label
        Panel_10                  matlab.ui.container.Panel
        Label_73                  matlab.ui.control.Label
        out_gain_1                matlab.ui.control.NumericEditField
        EditField_4Label_33       matlab.ui.control.Label
        out_gain_2                matlab.ui.control.NumericEditField
        EditField_4Label_32       matlab.ui.control.Label
        Label_28                  matlab.ui.control.Label
        Label_27                  matlab.ui.control.Label
        out_feedback_x_2          matlab.ui.control.NumericEditField
        EditField_4Label_27       matlab.ui.control.Label
        out_feedback_theta_2      matlab.ui.control.NumericEditField
        EditField_4Label_26       matlab.ui.control.Label
        Panel_9                   matlab.ui.container.Panel
        Label_72                  matlab.ui.control.Label
        state_gain_1              matlab.ui.control.NumericEditField
        EditField_4Label_22       matlab.ui.control.Label
        state_gain_2              matlab.ui.control.NumericEditField
        EditField_4Label_21       matlab.ui.control.Label
        state_gain_3              matlab.ui.control.NumericEditField
        EditField_4Label_20       matlab.ui.control.Label
        state_gain_4              matlab.ui.control.NumericEditField
        EditField_4Label_19       matlab.ui.control.Label
        Label_20                  matlab.ui.control.Label
        Label_19                  matlab.ui.control.Label
        state_feedback_dx_2       matlab.ui.control.NumericEditField
        EditField_4Label_18       matlab.ui.control.Label
        state_feedback_x_2        matlab.ui.control.NumericEditField
        EditField_4Label_17       matlab.ui.control.Label
        state_feedback_dtheta_2   matlab.ui.control.NumericEditField
        EditField_4Label_16       matlab.ui.control.Label
        state_feedback_theta_2    matlab.ui.control.NumericEditField
        EditField_4Label_15       matlab.ui.control.Label
        Tab_3                     matlab.ui.container.Tab
        export_system_result      matlab.ui.control.Button
        system_txt                matlab.ui.control.Label
        Panel_16                  matlab.ui.container.Panel
        Label_65                  matlab.ui.control.Label
        Label_64                  matlab.ui.control.Label
        Label_63                  matlab.ui.control.Label
        Label_62                  matlab.ui.control.Label
        s4Label_2                 matlab.ui.control.Label
        s3Label_2                 matlab.ui.control.Label
        s2Label_2                 matlab.ui.control.Label
        s1Label_2                 matlab.ui.control.Label
        Label_61                  matlab.ui.control.Label
        iLabel_20                 matlab.ui.control.Label
        Label_60                  matlab.ui.control.Label
        close_s4_image            matlab.ui.control.NumericEditField
        close_s4_real             matlab.ui.control.NumericEditField
        iLabel_19                 matlab.ui.control.Label
        Label_59                  matlab.ui.control.Label
        close_s3_image            matlab.ui.control.NumericEditField
        close_s3_real             matlab.ui.control.NumericEditField
        iLabel_18                 matlab.ui.control.Label
        Label_58                  matlab.ui.control.Label
        close_s1_image            matlab.ui.control.NumericEditField
        close_s1_real             matlab.ui.control.NumericEditField
        iLabel_17                 matlab.ui.control.Label
        Label_57                  matlab.ui.control.Label
        close_s2_image            matlab.ui.control.NumericEditField
        close_s2_real             matlab.ui.control.NumericEditField
        Label_56                  matlab.ui.control.Label
        close_system_fig          matlab.ui.control.UIAxes
        Panel_7                   matlab.ui.container.Panel
        Label_55                  matlab.ui.control.Label
        Label_54                  matlab.ui.control.Label
        Label_53                  matlab.ui.control.Label
        Label_52                  matlab.ui.control.Label
        s4Label                   matlab.ui.control.Label
        s3Label                   matlab.ui.control.Label
        s2Label                   matlab.ui.control.Label
        s1Label                   matlab.ui.control.Label
        Label_51                  matlab.ui.control.Label
        iLabel_16                 matlab.ui.control.Label
        Label_50                  matlab.ui.control.Label
        open_s4_image             matlab.ui.control.NumericEditField
        open_s4_real              matlab.ui.control.NumericEditField
        iLabel_15                 matlab.ui.control.Label
        Label_49                  matlab.ui.control.Label
        open_s3_image             matlab.ui.control.NumericEditField
        open_s3_real              matlab.ui.control.NumericEditField
        iLabel_14                 matlab.ui.control.Label
        Label_48                  matlab.ui.control.Label
        open_s1_image             matlab.ui.control.NumericEditField
        open_s1_real              matlab.ui.control.NumericEditField
        iLabel_13                 matlab.ui.control.Label
        Label_47                  matlab.ui.control.Label
        open_s2_image             matlab.ui.control.NumericEditField
        open_s2_real              matlab.ui.control.NumericEditField
        Label_46                  matlab.ui.control.Label
        open_system_fig           matlab.ui.control.UIAxes
        Tab_6                     matlab.ui.container.Tab
        observer_txt_2            matlab.ui.control.Label
        export_observer_result_2  matlab.ui.control.Button
        Panel_15                  matlab.ui.container.Panel
        Label_44                  matlab.ui.control.Label
        Label_43                  matlab.ui.control.Label
        obs_position_err_fig      matlab.ui.control.UIAxes
        obs_angle_err_fig         matlab.ui.control.UIAxes
        Panel_14                  matlab.ui.container.Panel
        Label_42                  matlab.ui.control.Label
        Label_41                  matlab.ui.control.Label
        obs_position_fig          matlab.ui.control.UIAxes
        obs_angle_fig             matlab.ui.control.UIAxes
        Tab_5                     matlab.ui.container.Tab
        observer_txt              matlab.ui.control.Label
        export_observer_result    matlab.ui.control.Button
        Panel_13                  matlab.ui.container.Panel
        Label_40                  matlab.ui.control.Label
        Label_39                  matlab.ui.control.Label
        obs_vel_err_fig           matlab.ui.control.UIAxes
        obs_anglevel_err_fig      matlab.ui.control.UIAxes
        Panel_12                  matlab.ui.container.Panel
        Label_38                  matlab.ui.control.Label
        Label_37                  matlab.ui.control.Label
        obs_vel_fig               matlab.ui.control.UIAxes
        obs_anglevel_fig          matlab.ui.control.UIAxes
        Label                     matlab.ui.control.Label
    end

    
    properties (Access = public)
        Property % Simulation Data
        t_simdata;
        state_simdata;
        yout_simdata;
        state_simdata2;
        yout_simdata2;
        observer_simdata;
        motion_pause_flag = false;
        motion_replay_flag = false;
        simulation_flag = false;
    end
    
    properties (Access = private)
        Property7 % Motion Data
        car1;
        car21;
        car22;
        pendulum1;
        pendulum2;
        file_path;
        % state matrix
        A;
        B;
        C;
        D;
        Ad;
        Bd;
        Cd;
        Dd;
        % observer flag
        observer_flag = false;
        % discrete flag
        discrete_flag = false;
        % controller gain parameters
        K_LQR;
        K_state;
        K_out;
    end
    
    methods (Access = private)
        
        function init_motion(app)
            car_length = 0.08;
            app.motion_fig.XLim = [-0.3,0.3];
            app.motion_fig.YLim = [-0.8, 0.8];
            plot(app.motion_fig,2*[-0.3,0.3],[-0.65;-0.65],'color','k','linestyle','-','linewidth',2);
            app.motion_fig.Interactions = [];
            animatedline(app.motion_fig,[-car_length;car_length],[-0.5;-0.5],'color','k','linestyle','-','linewidth',25);
            animatedline(app.motion_fig,-car_length,-0.72,'color','k','linestyle','-','markersize',40);
            animatedline(app.motion_fig, car_length,-0.72,'color','k','linestyle','-','markersize',40);
            animatedline(app.motion_fig,[0;0],[-0.36;0.6],'color','r','linestyle','-','linewidth',14);
            animatedline(app.motion_fig,0,-0.34,'color','g','linestyle','-','markersize',30);
            legend(app.angle_fig, "off");
            legend(app.position_fig, "off");
            legend(app.obs_angle_fig, "off");
            legend(app.obs_position_fig, "off");
            legend(app.obs_anglevel_fig, "off");
            legend(app.obs_vel_fig, "off");
        end
        
        function close_function(app)
            selection = uiconfirm(app.UIFigure ,'确认退出程序？（请确保更改的模型已导出）', '确认退出程序', ...
                'options', {'是', '否'}, 'DefaultOption', 2, 'CancelOption', 2, ...
                'Icon', 'question');
            switch selection
                case '是'
                    delete(app);
                case '否'
                    return;
            end
        end
        
        function state = state_feedback_setting(app)
            state = 0;
            % 判断极点是否符合要求
            if ((app.s1_image.Value ~= 0) && (app.s2_image.Value ~= 0)) && ...
                    ((app.s1_real.Value ~= app.s2_real.Value) || (app.s1_image.Value ~= app.s2_image.Value))
                state = 1;
                uialert(app.UIFigure, '状态反馈中极点配置 s1 和 s2 必须是对偶极点', '状态反馈控制器设置错误');
                return;
            end
            if ((app.s3_image.Value ~= 0) && (app.s4_image.Value ~= 0)) && ...
                    ((app.s3_real.Value ~= app.s4_real.Value) || (app.s3_image.Value ~= app.s4_image.Value))
                state = 1;
                uialert(app.UIFigure, '状态反馈中极点配置 s3 和 s4 必须是对偶极点', '状态反馈控制器设置错误');
                return;
            end
            % 获取期望状态点
            desire_state = [app.state_feedback_theta.Value; 
                app.state_feedback_dtheta.Value; 
                app.state_feedback_x.Value; 
                app.state_feedback_dx.Value];
            assignin('base', 'desire_state', desire_state);
            % 计算 K 矩阵
            syms s k1 k2 k3 k4;
            % 建立补偿后的特征方程
            K = [k1, k2, k3, k4];
            origin_equation = det(s*eye(4) - (app.A - app.B*K));
            origin_equation = collect(origin_equation, s);
            origin_coeff = coeffs(origin_equation, s, 'all');
            % 通过期望极点计算期望的特征方程
            lambda_1 = s - app.s1_real.Value - app.s1_image.Value * 1i;
            lambda_2 = s - app.s2_real.Value + app.s2_image.Value * 1i;
            lambda_3 = s - app.s3_real.Value - app.s3_image.Value * 1i;
            lambda_4 = s - app.s4_real.Value + app.s4_image.Value * 1i;
            desire_equation = collect(lambda_1*lambda_2*lambda_3*lambda_4, s);
            desire_coeff = coeffs(desire_equation, s, 'all');
            % 比较系数得到关于K的方程
            k_equation = [
                origin_coeff(2) == desire_coeff(2);
                origin_coeff(3) == desire_coeff(3);
                origin_coeff(4) == desire_coeff(4);
                origin_coeff(5) == desire_coeff(5);];
            % 求解得到K矩阵
            result = solve(k_equation);
            k1 = eval(result.k1);
            k2 = eval(result.k2);
            k3 = eval(result.k3);
            k4 = eval(result.k4);
            K = [k1, k2, k3, k4];
            app.K_state = K;
            assignin('base', 'K_state', K);
            % 显示控制器参数
            app.state_gain_1.Value = k1;
            app.state_gain_2.Value = k2; 
            app.state_gain_3.Value = k3;
            app.state_gain_4.Value = k4;
            app.state_feedback_theta_2.Value = app.state_feedback_theta.Value; 
            app.state_feedback_dtheta_2.Value = app.state_feedback_dtheta.Value; 
            app.state_feedback_x_2.Value = app.state_feedback_x.Value; 
            app.state_feedback_dx_2.Value = app.state_feedback_dx.Value;
        end
        
        function state = out_feedback_setting(app)
            state = 0;
            % 判断极点是否符合要求
            if ((app.s1_image_2.Value ~= 0) && (app.s2_image_2.Value ~= 0)) && (app.s1_image_2.Value ~= app.s2_image_2.Value)
                state = 1;
                uialert(app.UIFigure, '输出反馈中极点配置 s1 和 s2 必须是对偶极点', '输出反馈控制器设置错误');
                return;
            end
            if ((app.s3_image_2.Value ~= 0) && (app.s4_image_2.Value ~= 0)) && (app.s3_image_2.Value ~= app.s4_image_2.Value)
                state = 1;
                uialert(app.UIFigure, '输出反馈中极点配置 s3 和 s4 必须是对偶极点', '输出反馈控制器设置错误');
                return;
            end
            % 获取期望输出点
            desire_state = [app.out_feedback_theta.Value;
                app.out_feedback_x.Value;];
            assignin('base', 'desire_out', desire_state);
            % 计算 K 矩阵
            syms s k1 k2;
            % 建立补偿后的特征方程
            K = [k1, k2];
            origin_equation = det(s*eye(4) - (app.A - app.B*K*app.C));
            origin_equation = collect(origin_equation, s);
            origin_coeff = coeffs(origin_equation, s, 'all');
            % 通过期望极点计算期望的特征方程
            lambda_1 = s - app.s1_real_2.Value - app.s1_image_2.Value * 1i;
            lambda_2 = s - app.s2_real_2.Value + app.s2_image_2.Value * 1i;
            lambda_3 = s - app.s3_real_2.Value - app.s3_image_2.Value * 1i;
            lambda_4 = s - app.s4_real_2.Value + app.s4_image_2.Value * 1i;
            desire_equation = collect(lambda_1*lambda_2*lambda_3*lambda_4, s);
            desire_coeff = coeffs(desire_equation, s, 'all');
            % 比较系数得到关于K的方程
            k_equation = [
                origin_coeff(2) == desire_coeff(2);
                origin_coeff(3) == desire_coeff(3);
                origin_coeff(4) == desire_coeff(4);
                origin_coeff(5) == desire_coeff(5);];
            % 求解得到K矩阵
            result = solve(k_equation);
            k1 = eval(result.k1);
            k2 = eval(result.k2);
            K = [k1, k2];
            app.K_out = K;
            assignin('base', 'K_out', K);
            % 显示控制器参数
            app.out_gain_1.Value = k1;
            app.out_gain_2.Value = k2;
            app.out_feedback_theta_2.Value = app.out_feedback_theta.Value;
            app.out_feedback_x_2.Value = app.out_feedback_x.Value;
        end
        
        function state = observer_setting(app)
            state = 0;
            % 判断极点是否符合要求
            if ((app.s1_image_3.Value ~= 0) && (app.s2_image_3.Value ~= 0)) && ...
                    ((app.s1_real_3.Value ~= app.s2_real_3.Value) && (app.s1_image_3.Value ~= app.s2_image_3.Value))
                state = 1;
                uialert(app.UIFigure, '状态观测器中极点配置 s1 和 s2 必须是对偶极点', '状态观测器设置错误');
                return;
            end
            if ((app.s3_image_3.Value ~= 0) && (app.s4_image_3.Value ~= 0)) && ...
                    ((app.s3_real_3.Value ~= app.s4_real_3.Value) && (app.s3_image_3.Value ~= app.s4_image_3.Value))
                state = 1;
                uialert(app.UIFigure, '状态观测器中极点配置 s3 和 s4 必须是对偶极点', '状态观测器设置错误');
                return;
            end
            % 获取期望状态点
            init_observer_state = [app.state_observer_theta.Value, ...
                app.state_observer_dtheta.Value, ...
                app.state_observer_x.Value, ...
                app.state_observer_dx.Value];
            assignin('base', 'init_observer_state', init_observer_state);
            % 通过期望极点计算期望的特征方程
            lambda_1 = app.s1_real_3.Value - app.s1_image_3.Value * 1i;
            lambda_2 = app.s2_real_3.Value + app.s2_image_3.Value * 1i;
            lambda_3 = app.s3_real_3.Value - app.s3_image_3.Value * 1i;
            lambda_4 = app.s4_real_3.Value + app.s4_image_3.Value * 1i;
            desire_poles = [lambda_1, lambda_2, lambda_3, lambda_4];
            L = place(app.A', app.C', desire_poles)';
            assignin('base', 'L_observer', L);
            assignin('base', 'A_observer', app.A - L * app.C);
            assignin('base', 'B_observer', app.B);
            % 显示控制器参数
            app.observer_gain_1.Value = L(1, 1);
            app.observer_gain_2.Value = L(2, 1); 
            app.observer_gain_3.Value = L(3, 1);
            app.observer_gain_4.Value = L(4, 1);
            app.observer_gain_12.Value = L(1, 2);
            app.observer_gain_22.Value = L(2, 2); 
            app.observer_gain_32.Value = L(3, 2);
            app.observer_gain_42.Value = L(4, 2);
            app.state_observer_theta_2.Value = app.state_observer_theta.Value; 
            app.state_observer_dtheta_2.Value = app.state_observer_dtheta.Value; 
            app.state_observer_x_2.Value = app.state_observer_x.Value; 
            app.state_observer_dx_2.Value = app.state_observer_dx.Value;
        end
        
        function LQR_setting(app)
            desire_state = [app.LQR_theta.Value; 
                app.LQR_dtheta.Value; 
                app.LQR_x.Value; 
                app.LQR_dx.Value];
            assignin('base', 'LQR_desire_state', desire_state);
            Q = diag([app.LQR_q1.Value; app.LQR_q2.Value; app.LQR_q3.Value; app.LQR_q4.Value]);
            R = app.LQR_r.Value;
            if app.discrete_flag
                K = dlqr(app.Ad, app.Bd, Q, R);
            else
                K = lqr(app.A, app.B, Q, R);
            end
            app.K_LQR = K;
            assignin('base', 'K_LQR', K);
            app.LQR_gain_1.Value = K(1);
            app.LQR_gain_2.Value = K(2); 
            app.LQR_gain_3.Value = K(3);
            app.LQR_gain_4.Value = K(4);
            app.LQR_theta_2.Value = app.LQR_theta.Value; 
            app.LQR_dtheta_2.Value = app.LQR_dtheta.Value; 
            app.LQR_x_2.Value = app.LQR_x.Value; 
            app.LQR_dx_2.Value = app.LQR_dx.Value;
        end
        
        function system_performance(app)
            syms s;
            % open system poles
            if app.discrete_flag
                open_poles = solve(det(s*eye(4) - app.Ad) == 0);
            else
                open_poles = solve(det(s*eye(4) - app.A) == 0);
            end
            grid(app.open_system_fig, 'on');
            count = 1;
            while(count <= length(open_poles))
                open_pole = eval(open_poles(count));
                eval(sprintf("app.open_s%d_real.Value = real(open_pole);", count));
                eval(sprintf("app.open_s%d_image.Value = abs(imag(open_pole));", count));
                count = count + 1;
                if imag(open_pole) ~= 0
                    eval(sprintf("app.open_s%d_real.Value = real(open_pole);", count));
                    eval(sprintf("app.open_s%d_image.Value = abs(imag(open_pole));", count));
                    count = count + 1;
                end
            end
            if app.discrete_flag
                theta = 0:0.01:2*pi;
                cx = sin(theta);
                cy = cos(theta);
                plot(app.open_system_fig, cx, cy, 'LineWidth', 1, 'Color', [0.85,0.33,0.10]);
                hold(app.open_system_fig, 'on');
            end
            for open_pole = open_poles
                plot(app.open_system_fig, real(open_pole), imag(open_pole), 'x', 'Color', [0, 0.4470 0.7410]);
                hold(app.open_system_fig, 'on');
            end
            axis(app.open_system_fig, "equal");
            hold(app.open_system_fig, 'off');
            
            % close system poles
            controller_switch = app.get_value_index(app.controller_choose);
            s_equation = [];
            switch controller_switch
                case 2
                    if app.discrete_flag
                        s_equation = det(s*eye(4) - (app.Ad - app.Bd*app.K_state));
                    else
                        s_equation = det(s*eye(4) - (app.A - app.B*app.K_state));
                    end

                case 3
                    if app.discrete_flag
                        s_equation = det(s*eye(4) - (app.Ad - app.Bd*app.K_out*app.Cd));
                    else
                        s_equation = det(s*eye(4) - (app.A - app.B*app.K_out*app.C));
                    end
                    
                case 4
                    if app.discrete_flag
                        s_equation = det(s*eye(4) - (app.Ad - app.Bd*app.K_LQR));
                    else
                        s_equation = det(s*eye(4) - (app.A - app.B*app.K_LQR));
                    end
            end
            if ~isempty(s_equation)
                s_equation = collect(s_equation, s);
                s_coeff = coeffs(s_equation, s, 'all');
                close_poles = roots(s_coeff);
                grid(app.close_system_fig, 'on');
                count = 1;
                while(count <= length(close_poles))
                    close_pole = eval(close_poles(count));
                    eval(sprintf("app.close_s%d_real.Value = real(close_pole);", count));
                    eval(sprintf("app.close_s%d_image.Value = abs(imag(close_pole));", count));
                    count = count + 1;
                    if imag(close_pole) ~= 0
                        eval(sprintf("app.close_s%d_real.Value = real(close_pole);", count));
                        eval(sprintf("app.close_s%d_image.Value = abs(imag(close_pole));", count));
                        count = count + 1;
                    end
                end
                if app.discrete_flag
                    theta = 0:0.01:2*pi;
                    cx = sin(theta);
                    cy = cos(theta);
                    plot(app.close_system_fig, cx, cy, 'LineWidth', 1, 'Color', [0.85,0.33,0.10]);
                    hold(app.close_system_fig, 'on');
                end
                for close_pole = close_poles
                    plot(app.close_system_fig, real(close_pole), imag(close_pole), 'x', 'Color', [0, 0.4470 0.7410]);
                    hold(app.close_system_fig, 'on');
                end
                axis(app.close_system_fig, "equal");
                hold(app.close_system_fig, 'off');
            end
        end
        
        function index = get_value_index(~, component)
            items = component.Items;
            val = component.Value;
            for i=1:length(items)
                if strcmp(val, items{i})
                    index = i;
                    return;
                end
            end
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.UIFigure.Name = "一阶倒立摆仿真控制程序";
            if isMATLABReleaseOlderThan("R2021a")
                uialert(app.UIFigure, "当前的Matlab版本太低，无法使用此APP，请更新至R2021a及以上。", ...
                    "不支持的Matlab版本", "Icon", "error");
                delete(app);
                return;
            end
            valid_ver = false;
            toolboxes = ver;
            for i = 1:length(toolboxes)
                if strcmp(toolboxes(i).Name, "Control System Toolbox")
                    valid_ver = true;
                    break
                end
            end
            if ~valid_ver
                uialert(app.UIFigure, "请安装 Control System Toolbox 工具箱。", ...
                    "缺少工具箱", "Icon", "error");
                delete(app);
                return;
            end
            app_path = which('pedulum_gui.mlapp');
            file = strrep(app_path, 'pedulum_gui.mlapp', 'pedulum_model_template.mdl');
            app.file_path = file;
            app.filedir_txt.Value = app.file_path;
            app.export_result.Enable = "off";
            app.hide_linear.Enable = "off";
            app.hide_nonlinear.Enable = "off";
            app.init_motion();
            close_system("pedulum_model", 0);
            close_system("pedulum_model_template", 0);
            app.state_txt.FontColor = [1 0.4118 0.1608];
            app.observer_txt_2.FontColor = [1 0.4118 0.1608];
            app.observer_txt.FontColor = [1 0.4118 0.1608];
            app.system_txt.FontColor = [1 0.4118 0.1608];
            % figure setting
            xlabel(app.angle_fig, 'Time (s)');
            ylabel(app.angle_fig, 'θ (°)');
            xlabel(app.position_fig, 'Time (s)');
            ylabel(app.position_fig, 'x (m)');
            xlabel(app.obs_angle_fig, 'Time (s)');
            xlabel(app.obs_position_fig, 'Time (s)');
            xlabel(app.obs_anglevel_fig, 'Time (s)');
            xlabel(app.obs_vel_fig, 'Time (s)');
            xlabel(app.obs_angle_err_fig, 'Time (s)');
            xlabel(app.obs_position_err_fig, 'Time (s)');
            xlabel(app.obs_anglevel_err_fig, 'Time (s)');
            xlabel(app.obs_vel_err_fig, 'Time (s)');
            ylabel(app.obs_angle_fig, 'θ (°)');
            ylabel(app.obs_position_fig, 'x (m)');
            ylabel(app.obs_anglevel_fig, 'dθ (°/s)');
            ylabel(app.obs_vel_fig, 'dx (m/s)');
            ylabel(app.obs_angle_err_fig, 'θ (°)');
            ylabel(app.obs_position_err_fig, 'x (m)');
            ylabel(app.obs_anglevel_err_fig, 'dθ (°/s)');
            ylabel(app.obs_vel_err_fig, 'dx (m/s)');
            grid(app.angle_fig, 'on');
            grid(app.angle_fig, 'on');
            grid(app.position_fig, 'on');
            grid(app.position_fig, 'on');
            grid(app.obs_angle_fig, 'on');
            grid(app.obs_position_fig, 'on');
            grid(app.obs_anglevel_fig, 'on');
            grid(app.obs_vel_fig, 'on');
            grid(app.obs_angle_err_fig, 'on');
            grid(app.obs_position_err_fig, 'on');
            grid(app.obs_anglevel_err_fig, 'on');
            grid(app.obs_vel_err_fig, 'on');
            grid(app.obs_angle_fig, 'on');
            grid(app.obs_position_fig, 'on');
            grid(app.obs_anglevel_fig, 'on');
            grid(app.obs_vel_fig, 'on');
            grid(app.obs_angle_err_fig, 'on');
            grid(app.obs_position_err_fig, 'on');
            grid(app.obs_anglevel_err_fig, 'on');
            grid(app.obs_vel_err_fig, 'on');
        end

        % Button pushed function: exit
        function exitButtonPushed(app, ~)
            if app.motion_pause_flag
                uiresume(app.UIFigure);
                app.motion_pause_flag = false;
            end
            app.close_function();
            close_system("pedulum_model", 0);
            close_system("pedulum_model_template", 0);
        end

        % Button pushed function: start
        function startButtonPushed(app, ~)
            % init
            app.init_motion();
            plot(app.angle_fig, 0, 0);
            plot(app.position_fig, 0, 0);
            plot(app.obs_anglevel_err_fig, 0, 0);
            plot(app.obs_vel_err_fig, 0, 0);
            plot(app.obs_anglevel_fig, 0, 0);
            plot(app.obs_vel_fig, 0, 0);
            plot(app.obs_angle_err_fig, 0, 0);
            plot(app.obs_position_err_fig, 0, 0);
            plot(app.obs_angle_fig, 0, 0);
            plot(app.obs_position_fig, 0, 0);
            if app.motion_pause_flag
                uiresume(app.UIFigure);
                app.motion_pause_flag = false;
            end
            app.discrete_flag = false;
            % check file
            file = app.file_path;
            if ~exist(file, "file")
                uialert(app.UIFigure, ['未找到文件: ' file '. 请重新打开模型文件.'], '文件打开错误');
                return;
            end
            % set state
            app.simulation_flag = true;
            app.state_txt.FontColor = [1 0 0];
            app.state_txt.Text = "正在仿真,请稍等...";
            app.observer_txt.FontColor = [1 0 0];
            app.observer_txt.Text = "正在仿真,请稍等...";
            app.observer_txt_2.FontColor = [1 0 0];
            app.observer_txt_2.Text = "正在仿真,请稍等...";
            app.system_txt.FontColor = [1 0 0];
            app.system_txt.Text = "正在仿真,请稍等...";
            % change button state
            app.start.Enable = "off";
            app.play.Enable = "off";
            app.replay.Enable = "off";
            app.hide_linear.Enable = "off";
            app.hide_nonlinear.Enable = "off";
            app.export_result.Enable = "off";
            app.export_observer_result.Enable = "off";
            app.export_observer_result_2.Enable = "off";
            app.export_system_result.Enable = "off";
            % assign app data to base workspace
            % parameters
            M = app.car_mass_data.Value;
            m = app.mass_data.Value;
            b = app.mu_data.Value;
            I = app.J_data.Value;
            l = app.length_data.Value;
            g = 9.8;
            assignin('base', 'M', M);
            assignin('base', 'm', m);
            assignin('base', 'b', b);
            assignin('base', 'I', I);
            assignin('base', 'l', l);
            assignin('base', 'g', g);
            % select model
            discrete_switch = 1;
            linear_switch =  app.get_value_index(app.sim_mode_choose);
            if linear_switch == 4
                linear_switch = 1;
                discrete_switch = 2;
                app.discrete_flag = true;
            end
            assignin('base', 'linear_switch', linear_switch);
            assignin('base', 'discrete_switch', discrete_switch);
            % state matrix
            rotation_switch =  app.get_value_index(app.rotation_mode);
            if rotation_switch == 2
                app.A = [           0                   1 0             0;...
                    (M+m)*m*g*l/((M+m)*I+M*m*l^2) 0 0 m*l*b/((M+m)*I+M*m*l^2);...
                              0                   0 0             1;...
                     -m^2*l^2*g/((M+m)*I+M*m*l^2) 0 0 -(I+m*l^2)*b/((M+m)*I+M*m*l^2)];
                app.B = [0;-m*l/(((M+m)*I+M*m*l^2));0;(I+m*l^2)/((M+m)*I+M*m*l^2)];
                app.C = [1 0 0 0;0 0 1 0];
                app.D = zeros(4,1);
            else
                app.A = [           0                   1 0             0;...
                    (M+m)*m*g*l/((M+m)*I+M*m*l^2) 0 0 m*l*b/((M+m)*I+M*m*l^2);...
                              0                   0 0             1;...
                     m^2*l^2*g/((M+m)*I+M*m*l^2) 0 0 (I+m*l^2)*b/((M+m)*I+M*m*l^2)];
                app.B = [0;m*l/(((M+m)*I+M*m*l^2));0;(I+m*l^2)/((M+m)*I+M*m*l^2)];
                app.C = [1 0 0 0;0 0 1 0];
                app.D = zeros(4,1);
            end
            assignin('base', 'A', app.A);
            assignin('base', 'B', app.B);
            assignin('base', 'C', app.C);
            assignin('base', 'D', app.D);
            assignin('base', 'rotation_switch', rotation_switch);
            Gd = c2d(ss(app.A, app.B, diag(ones(1,4)), app.D), app.sample_time_data.Value, 'zoh');
            app.Ad = Gd.A;
            app.Bd = Gd.B;
            app.Cd = Gd.C;
            app.Dd = Gd.D;
            assignin('base', 'Ad', app.Ad);
            assignin('base', 'Bd', app.Bd);
            assignin('base', 'Cd', app.Cd);
            assignin('base', 'Dd', app.Dd);
            assignin('base', 'Ts', app.sample_time_data.Value);
            % init state
            init_position = app.init_position_data.Value;
            init_angle = app.init_angle_data.Value;
            assignin('base', 'init_position', init_position);
            assignin('base', 'init_angle', init_angle);
            % simulink setting
            disturbance_switch =  app.get_value_index(app.signal_choose);
            disturbance_rate = app.disturbance_rate_data.Value;
            disturbance_amp = app.disturbance_amp_data.Value;
            assignin('base', 'disturbance_switch', disturbance_switch);
            assignin('base', 'disturbance_rate', disturbance_rate*2*pi);
            assignin('base', 'disturbance_amp', disturbance_amp);
            % controller setting
            app.observer_flag = app.observer_checkbox.Value;
            controller_switch =  app.get_value_index(app.controller_choose);
            assignin('base', 'controller_switch', controller_switch);
            assignin('base', 'observer_switch', app.observer_flag);
            assignin('base', 'desire_state', [0, 0, 0, 0]);
            assignin('base', 'desire_out', [0, 0]);
            assignin('base', 'K_out', [0, 0]);
            assignin('base', 'K_state', [0, 0, 0, 0]);
            assignin('base', 'L_observer', zeros(4,2));
            assignin('base', 'A_observer', zeros(4,4));
            assignin('base', 'B_observer', zeros(4,1));
            assignin('base', 'init_observer_state', [0, 0, 0, 0]);
            assignin('base', 'LQR_desire_state', [0, 0, 0, 0]);
            assignin('base', 'K_LQR', [0, 0, 0, 0]);
            if app.observer_flag
                if app.observer_setting()
                    % set to default state
                    app.play.Enable = "off";
                    app.start.Enable = "on";
                    app.state_txt.FontColor = [1 0.4118 0.1608];
                    app.state_txt.Text = '等待用户操作...';
                    app.observer_txt.FontColor = [1 0.4118 0.1608];
                    app.observer_txt.Text = "等待用户操作...";
                    app.observer_txt_2.FontColor = [1 0.4118 0.1608];
                    app.observer_txt_2.Text = "等待用户操作...";
                    return
                end
            end
            switch controller_switch
                case 2
                    if app.state_feedback_setting()
                        % set to default state
                        app.play.Enable = "off";
                        app.start.Enable = "on";
                        app.state_txt.FontColor = [1 0.4118 0.1608];
                        app.state_txt.Text = '等待用户操作...';
                        app.observer_txt.FontColor = [1 0.4118 0.1608];
                        app.observer_txt.Text = "等待用户操作...";
                        app.observer_txt_2.FontColor = [1 0.4118 0.1608];
                        app.observer_txt_2.Text = "等待用户操作...";
                        app.system_txt.FontColor = [1 0.4118 0.1608];
                        app.system_txt.Text = "等待用户操作...";
                        return
                    end

                case 3
                    if app.out_feedback_setting()
                        % set to default state
                        app.play.Enable = "off";
                        app.start.Enable = "on";
                        app.state_txt.FontColor = [1 0.4118 0.1608];
                        app.state_txt.Text = '等待用户操作...';
                        app.observer_txt.FontColor = [1 0.4118 0.1608];
                        app.observer_txt.Text = "等待用户操作...";
                        app.observer_txt_2.FontColor = [1 0.4118 0.1608];
                        app.observer_txt_2.Text = "等待用户操作...";
                        app.system_txt.FontColor = [1 0.4118 0.1608];
                        app.system_txt.Text = "等待用户操作...";
                        return
                    end
                   
                case 4
                    app.LQR_setting();
            end
            % sim model
            try
                pause(0.5);
                stepsize = app.step_data.Value;
                assignin('base', 'stepsize', stepsize);
                option = simset('fixedstep', stepsize);
                if  app.get_value_index(app.sim_mode_choose) == 3
                    assignin('base', 'linear_switch', 1);
                    simout = sim(file, [0, app.time_data.Value], option);
                    app.state_simdata = simout.state;
                    app.state_simdata(:,1:2) = app.state_simdata(:,1:2) * 180/pi;
                    app.yout_simdata = simout.yout;
                    app.yout_simdata(:,1) = app.yout_simdata(:,1) * 180/pi;
                    assignin('base', 'linear_switch', 2);
                    simout = sim(file, [0, app.time_data.Value], option);
                    app.state_simdata2 = simout.state;
                    app.state_simdata2(:,1:2) = app.state_simdata2(:,1:2) * 180/pi;
                    app.yout_simdata2 = simout.yout;
                    app.yout_simdata2(:,1) = app.yout_simdata2(:,1) * 180/pi;
                    app.observer_simdata = simout.observer_state;
                    app.observer_simdata(:,1:2) = app.observer_simdata(:,1:2) * 180/pi;
                else
                    simout = sim(file, [0, app.time_data.Value], option);
                    app.state_simdata = simout.state;
                    app.state_simdata(:,1:2) = app.state_simdata(:,1:2) * 180/pi;
                    app.yout_simdata = simout.yout;
                    app.yout_simdata(:,1) = app.yout_simdata(:,1) * 180/pi;
                    app.observer_simdata = simout.observer_state;
                    app.observer_simdata(:,1:2) = app.observer_simdata(:,1:2) * 180/pi;
                end
                app.t_simdata = simout.t;
            catch exception % if sim failure throw exception window
                uialert(app.UIFigure, exception.message, '仿真错误');
                % set to default state
                app.play.Enable = "off";
                app.start.Enable = "on";
                app.state_txt.FontColor = [1 0.4118 0.1608];
                app.state_txt.Text = '等待用户操作...';
                app.observer_txt.FontColor = [1 0.4118 0.1608];
                app.observer_txt.Text = "等待用户操作...";
                app.observer_txt_2.FontColor = [1 0.4118 0.1608];
                app.observer_txt_2.Text = "等待用户操作...";
                app.system_txt.FontColor = [1 0.4118 0.1608];
                app.system_txt.Text = "等待用户操作...";
                return;
            end

            % plot simulation result
            plot(app.angle_fig, app.t_simdata, app.yout_simdata(:,1), 'LineWidth',2);
            plot(app.position_fig, app.t_simdata, app.yout_simdata(:,2), 'LineWidth', 2);
            if  app.get_value_index(app.sim_mode_choose) == 3
                app.hide_linear.Enable = "on";
                app.hide_nonlinear.Enable = "on";
                hold(app.angle_fig, 'on');
                hold(app.position_fig, 'on');
                plot(app.angle_fig, app.t_simdata, app.yout_simdata2(:,1), '--', 'LineWidth',1.8);
                plot(app.position_fig, app.t_simdata, app.yout_simdata2(:,2), '--','LineWidth', 1.8);
                legend(app.angle_fig, "Linear", "Non-Linear", "FontName", "Times New Roman");
                legend(app.position_fig, "Linear", "Non-Linear", "FontName", "Times New Roman");
                hold(app.angle_fig, 'off');
                hold(app.position_fig, 'off');
                app.hide_linear.Text = "隐藏线性结果";
                app.hide_nonlinear.Text = "隐藏非线性结果";
            end

            % if turn on observer, plot observer results
            if app.observer_flag
                if  app.get_value_index(app.sim_mode_choose) == 3
                    plot(app.obs_anglevel_fig, app.t_simdata, app.observer_simdata(:,2), 'LineWidth',2);
                    hold(app.obs_anglevel_fig, 'on');
                    plot(app.obs_anglevel_fig, app.t_simdata, app.state_simdata2(:,2), '--', 'LineWidth',1.8);
                    plot(app.obs_vel_fig, app.t_simdata, app.observer_simdata(:,4), 'LineWidth',2);
                    hold(app.obs_vel_fig, 'on');
                    plot(app.obs_vel_fig, app.t_simdata, app.state_simdata2(:,4), '--', 'LineWidth',1.8);
                    plot(app.obs_anglevel_err_fig, app.t_simdata, app.state_simdata2(:,2) - app.observer_simdata(:,2), 'LineWidth',2);
                    plot(app.obs_vel_err_fig, app.t_simdata, app.state_simdata2(:,4) - app.observer_simdata(:,4), 'LineWidth',2);
                    plot(app.obs_angle_fig, app.t_simdata, app.observer_simdata(:,1), 'LineWidth',2);
                    hold(app.obs_angle_fig, 'on');
                    plot(app.obs_angle_fig, app.t_simdata, app.state_simdata2(:,1), '--', 'LineWidth',1.8);
                    plot(app.obs_position_fig, app.t_simdata, app.observer_simdata(:,3), 'LineWidth',2);
                    hold(app.obs_position_fig, 'on');
                    plot(app.obs_position_fig, app.t_simdata, app.state_simdata2(:,3), '--', 'LineWidth',1.8);
                    plot(app.obs_angle_err_fig, app.t_simdata, app.state_simdata2(:,1) - app.observer_simdata(:,1), 'LineWidth',2);
                    plot(app.obs_position_err_fig, app.t_simdata, app.state_simdata2(:,3) - app.observer_simdata(:,3), 'LineWidth',2);
                else
                    plot(app.obs_anglevel_fig, app.t_simdata, app.observer_simdata(:,2), 'LineWidth',2);
                    hold(app.obs_anglevel_fig, 'on');
                    plot(app.obs_anglevel_fig, app.t_simdata, app.state_simdata(:,2), '--', 'LineWidth',1.8);
                    plot(app.obs_vel_fig, app.t_simdata, app.observer_simdata(:,4), 'LineWidth',2);
                    hold(app.obs_vel_fig, 'on');
                    plot(app.obs_vel_fig, app.t_simdata, app.state_simdata(:,4), '--', 'LineWidth',1.8);
                    plot(app.obs_anglevel_err_fig, app.t_simdata, app.state_simdata(:,2) - app.observer_simdata(:,2), 'LineWidth',2);
                    plot(app.obs_vel_err_fig, app.t_simdata, app.state_simdata(:,4) - app.observer_simdata(:,4), 'LineWidth',2);
                    plot(app.obs_angle_fig, app.t_simdata, app.observer_simdata(:,1), 'LineWidth',2);
                    hold(app.obs_angle_fig, 'on');
                    plot(app.obs_angle_fig, app.t_simdata, app.state_simdata(:,1), '--', 'LineWidth',1.8);
                    plot(app.obs_position_fig, app.t_simdata, app.observer_simdata(:,3), 'LineWidth',2);
                    hold(app.obs_position_fig, 'on');
                    plot(app.obs_position_fig, app.t_simdata, app.state_simdata(:,3), '--', 'LineWidth',1.8);
                    plot(app.obs_angle_err_fig, app.t_simdata, app.state_simdata(:,1) - app.observer_simdata(:,1), 'LineWidth',2);
                    plot(app.obs_position_err_fig, app.t_simdata, app.state_simdata(:,3) - app.observer_simdata(:,3), 'LineWidth',2);
                end
                legend(app.obs_anglevel_fig, "Observer", "Real", "FontName", "Times New Roman");
                legend(app.obs_vel_fig, "Observer", "Real", "FontName", "Times New Roman");
                legend(app.obs_angle_fig, "Observer", "Real", "FontName", "Times New Roman");
                legend(app.obs_position_fig, "Observer", "Real", "FontName", "Times New Roman");
                hold(app.obs_anglevel_fig, 'off');
                hold(app.obs_vel_fig, 'off');
                hold(app.obs_angle_fig, 'off');
                hold(app.obs_position_fig, 'off');
            end

            % generate system performance
            app.system_performance();

            % set to new state
            app.state_txt.FontColor = [0.24 0.60 0.11];
            app.state_txt.Text = '仿真已完成,可以选择播放动画';
            if app.get_value_index(app.controller_choose) == 1
                app.system_txt.FontColor = [1 0 0];
                app.system_txt.Text = "未开启控制器";
            else
                app.system_txt.FontColor = [0.24 0.60 0.11];
                app.system_txt.Text = "已开启控制器，仿真完成";
            end
            if app.observer_flag
                app.observer_txt.FontColor = [0.24 0.60 0.11];
                app.observer_txt.Text = "已开启状态观测器，仿真完成";
                app.export_observer_result.Enable = "on";
                app.observer_txt_2.FontColor = [0.24 0.60 0.11];
                app.observer_txt_2.Text = "已开启状态观测器，仿真完成";
                app.export_observer_result_2.Enable = "on";
            else
                app.observer_txt.FontColor = [1 0 0];
                app.observer_txt.Text = "未开启状态观测器";
                app.observer_txt_2.FontColor = [1 0 0];
                app.observer_txt_2.Text = "未开启状态观测器";
            end
            app.export_result.Enable = "on";
            app.export_system_result.Enable = "on";
            app.start.Enable = "on";
            app.play.Enable = "on";
            app.simulation_flag = false;
        end

        % Button pushed function: play
        function playButtonPushed(app, ~)
            if app.motion_pause_flag && ~app.motion_replay_flag
                uiresume(app.UIFigure);
                app.play.Text = "暂停播放";
                app.start.Enable = "off";
                app.motion_pause_flag = false;
                return;
            end
            if app.play.Text == "播放动画" || app.motion_replay_flag
                if app.motion_pause_flag
                    uiresume(app.UIFigure);
                    app.motion_pause_flag = false;
                end
                app.play.Text = "暂停播放";
                app.start.Enable = "off";
                app.replay.Enable = "on";
                app.motion_replay_flag = false;
                t = app.t_simdata;
                y = app.yout_simdata;
                xgap = max(y(:,2)) - min(y(:,2));
                car_length = 0.06 + 0.2*xgap;
                xmin = min(y(:,2)) - 0.2*xgap - 0.3;
                xmax = max(y(:,2)) + 0.2*xgap + 0.3;
                app.motion_fig.XLim = [xmin, xmax];
                app.motion_fig.YLim = [-0.8, 0.8];
                plot(app.motion_fig,2*[xmin;xmax],[-0.65;-0.65],'color','k','linestyle','-','linewidth',2);
                app.motion_fig.Interactions = [];
                txt = text(app.motion_fig, 0, 1, sprintf("Time   %.2f s", 0), 'Units', 'normalized');
                txt.FontSize = 16;
                txt.FontName = "Times New Roman";
                txt.Color = [0 0 1];
                app.car1=animatedline(app.motion_fig,[-car_length;car_length],[-0.5;-0.5],'color','k','linestyle','-','linewidth',25);
                app.car21=animatedline(app.motion_fig,-car_length,-0.72,'color','k','linestyle','-','markersize',40);
                app.car22=animatedline(app.motion_fig, car_length,-0.72,'color','k','linestyle','-','markersize',40);
                app.pendulum1=animatedline(app.motion_fig,[0;0],[-0.36;0.6],'color','r','linestyle','-','linewidth',14);
                app.pendulum2=animatedline(app.motion_fig,0,-0.34,'color','g','linestyle','-','markersize',30);
                for s=1:length(t)
                    try
                        clearpoints(app.car21)
                        clearpoints(app.car22)
                        clearpoints(app.car1)
                        clearpoints(app.pendulum2)
                        clearpoints(app.pendulum1)
                        txt.String = sprintf("Time %.2f s", t(s));
                        addpoints(app.car21,-car_length+y(s,2),-0.72);
                        addpoints(app.car22,car_length+y(s,2),-0.72);
                        addpoints(app.car1,[-car_length+y(s,2);car_length+y(s,2)],[-0.5;-0.5]);
                        addpoints(app.pendulum2,y(s,2),-0.33);
                        addpoints(app.pendulum1,[y(s,2);sind(y(s,1))+y(s,2)],[-0.36;-0.36+cosd(y(s,1))]);
                        drawnow;
                    catch 
                        return;
                    end
                end
                % finish play and set to default
                app.play.Text = "播放动画";
                app.start.Enable = "on";
            else
                app.play.Text = "播放动画";
                app.start.Enable = "on";
                app.motion_pause_flag = true;
                uiwait(app.UIFigure);
            end
        end

        % Button pushed function: replay
        function replayButtonPushed(app, event)
            app.motion_replay_flag = true;
            app.playButtonPushed(event);
        end

        % Button pushed function: openfile
        function openfileButtonPushed(app, ~)
            [file, path] = uigetfile('*.mdl','Select the Pedulum Simulink Model file','pedulum_model.mdl');
            % user cancel operation
            if path == 0
                return;
            end
            filepath = [path file];
            info = Simulink.MDLInfo(filepath);
            type = info.BlockDiagramType;
            modelname = info.BlockDiagramName;
            if type ~= "Model"
                uialert(app.UIFigure, ['打开的文件 [' file '] 不是模型文件, 请重新打开.'], "打开模型错误");
                return;
            end
            if modelname ~= "pedulum_model"
                uialert(app.UIFigure, ['打开的文件模型 [' modelname '] 不是单摆模型 [pedulum_model], 请确认文件内容，' ...
                    '如果确认无误，请将打开的模型文件名改为 [pedulum_model] 后重新打开.'], "打开模型错误");
                return;
            end
            app.file_path = filepath;
            app.filedir_txt.Value = app.file_path;
        end

        % Button pushed function: editfile
        function editfileButtonPushed(app, ~)
            file = app.file_path;
            if ~exist(file, "file")
                uialert(app.UIFigure, ['未找到文件: ' file '. 请重新打开模型文件.'], '文件打开错误');
                return;
            end
            close_system("pedulum_model", 0);
            close_system("pedulum_model_template", 0);
            open(file);
        end

        % Button pushed function: exportfile
        function exportfileButtonPushed(app, ~)
            file = app.file_path;
            if ~exist(file, "file")
                uialert(app.UIFigure, ['未找到文件: ' file '. 请重新打开模型文件.'], '文件打开错误');
                return;
            end
            [outfile, outpath] = uiputfile('*.mdl','Save the Pedulum Simulink Model file','pedulum_model.mdl');
            % user cancel operation
            if outpath == 0
                return;
            end
            if outfile ~= "pedulum_model.mdl"
                selection = uiconfirm(app.UIFigure ,['保存文件名 [' outfile '] 不为 [pedulum_model.mdl], 将会导致程序无法再次读取打开，是否继续保存为' outfile '?'], ...
                    '确认导出模型', ...
                    'options', {'是', '否'}, 'DefaultOption', 2, 'CancelOption', 2, ...
                    'Icon', 'question');
                switch selection
                    case '是'
                    case '否'
                        return;
                end
            end
            outfilepath = [outpath, outfile];
            [status, msg] = copyfile(file, outfilepath, 'f');
            if status == 1
                uialert(app.UIFigure, ['成功导出模型到文件: ' file '.'], '模型导出成功', 'Icon', 'success');
            else
                uialert(app.UIFigure, ['未成功导出模型到文件: ' file '. 错误原因: ' msg], '模型导出失败');
            end
        end

        % Button pushed function: hide_linear
        function hide_linearButtonPushed(app, ~)
            if app.hide_linear.Text == "隐藏线性结果"
                plot(app.angle_fig, app.t_simdata, app.yout_simdata2(:,1), 'LineWidth',2);
                plot(app.position_fig, app.t_simdata, app.yout_simdata2(:,2), 'LineWidth', 2);
                legend(app.angle_fig, "Non-Linear", "FontName", "Times New Roman");
                legend(app.position_fig, "Non-Linear", "FontName", "Times New Roman");
                app.hide_linear.Text = "显示线性结果";
                app.hide_nonlinear.Enable = "off";
            else
                plot(app.angle_fig, app.t_simdata, app.yout_simdata(:,1), 'LineWidth',2);
                plot(app.position_fig, app.t_simdata, app.yout_simdata(:,2), 'LineWidth', 2);
                hold(app.angle_fig, 'on');
                hold(app.position_fig, 'on');
                plot(app.angle_fig, app.t_simdata, app.yout_simdata2(:,1), '--', 'LineWidth',1.8);
                plot(app.position_fig, app.t_simdata, app.yout_simdata2(:,2), '--','LineWidth', 1.8);
                legend(app.angle_fig, "Linear", "Non-Linear", "FontName", "Times New Roman");
                legend(app.position_fig, "Linear", "Non-Linear", "FontName", "Times New Roman");
                hold(app.angle_fig, 'off');
                hold(app.position_fig, 'off');
                app.hide_linear.Text = "隐藏线性结果";
                app.hide_nonlinear.Enable = "on";
            end
        end

        % Button pushed function: hide_nonlinear
        function hide_nonlinearButtonPushed(app, ~)
            if app.hide_nonlinear.Text == "隐藏非线性结果"
                plot(app.angle_fig, app.t_simdata, app.yout_simdata(:,1), 'LineWidth',2);
                plot(app.position_fig, app.t_simdata, app.yout_simdata(:,2), 'LineWidth', 2);
                legend(app.angle_fig, "Linear", "FontName", "Times New Roman");
                legend(app.position_fig, "Linear", "FontName", "Times New Roman");
                app.hide_nonlinear.Text = "显示非线性结果";
                app.hide_linear.Enable = "off";
            else
                plot(app.angle_fig, app.t_simdata, app.yout_simdata(:,1), 'LineWidth',2);
                plot(app.position_fig, app.t_simdata, app.yout_simdata(:,2), 'LineWidth', 2);
                hold(app.angle_fig, 'on');
                hold(app.position_fig, 'on');
                plot(app.angle_fig, app.t_simdata, app.yout_simdata2(:,1), '--', 'LineWidth',1.8);
                plot(app.position_fig, app.t_simdata, app.yout_simdata2(:,2), '--','LineWidth', 1.8);
                legend(app.angle_fig, "Linear", "Non-Linear", "FontName", "Times New Roman");
                legend(app.position_fig, "Linear", "Non-Linear", "FontName", "Times New Roman");
                hold(app.angle_fig, 'off');
                hold(app.position_fig, 'off');
                app.hide_nonlinear.Text = "隐藏非线性结果";
                app.hide_linear.Enable = "on";
            end
        end

        % Button pushed function: export_result
        function export_resultButtonPushed(app, ~)
            [outfile, outpath] = uiputfile({'*.pdf', '*.png'},'Save Simulation Results','results.pdf');
            % user cancel operation
            if outpath == 0
                return;
            end
            % show progress bar
            progress = uiprogressdlg(app.UIFigure, "Message", "正在准备导出 ...");
            [~, filename, extension] = fileparts(outfile);
            outpath = [outpath filename];
            if ~exist(outpath, "dir")
                mkdir(outpath);
            end
            angle_filename = [outpath '/angle' extension];
            position_filename = [outpath '/position' extension];
            pause(1.2);
            try
                if extension == ".png"
                    progress.Message = "正在导出第 1 张图片 (1/2) ...";
                    progress.Value = 0.5;
                    exportgraphics(app.angle_fig, angle_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Message = "正在导出第 2 张图片 (2/2) ...";
                    progress.Value = 0.99999999;
                    exportgraphics(app.position_fig, position_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Value = 1;
                else
                    progress.Message = "正在导出第 1 张图片 (1/2) ...";
                    progress.Value = 0.5;
                    exportgraphics(app.angle_fig, angle_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Message = "正在导出第 2 张图片 (2/2) ...";
                    progress.Value = 0.99999999;
                    exportgraphics(app.position_fig, position_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Value = 1;
                end
            catch exception
                uialert(app.UIFigure, exception.message, "导出结果图片错误");
                return;
            end
            uialert(app.UIFigure, sprintf(['成功导出结果到文件:\n' angle_filename '\n' position_filename]), '结果导出成功', 'Icon', 'success');
        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, ~)
            app.close_function();
        end

        % Button pushed function: export_observer_result
        function export_observer_resultButtonPushed(app, ~)
            [outfile, outpath] = uiputfile({'*.pdf', '*.png'},'Save Observer Simulation Results','observer_1.pdf');
            % user cancel operation
            if outpath == 0
                return;
            end
            % show progress bar
            progress = uiprogressdlg(app.UIFigure, "Message", "正在准备导出 ...");
            [~, filename, extension] = fileparts(outfile);
            outpath = [outpath filename];
            if ~exist(outpath, "dir")
                mkdir(outpath);
            end
            anglevel_filename = [outpath '/anglevel_obs' extension];
            anglevel_err_filename = [outpath '/anglevel_obs_err' extension];
            vel_filename = [outpath '/vel_obs' extension];
            vel_err_filename = [outpath '/vel_obs_err' extension];
            pause(1.2);
            try
                if extension == ".png"
                    progress.Message = "正在导出第 1 张图片 (1/4) ...";
                    progress.Value = 0.25;
                    exportgraphics(app.obs_anglevel_fig, anglevel_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Message = "正在导出第 2 张图片 (2/4) ...";
                    progress.Value = 0.5;
                    exportgraphics(app.obs_anglevel_err_fig, anglevel_err_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Message = "正在导出第 3 张图片 (3/4) ...";
                    progress.Value = 0.75;
                    exportgraphics(app.obs_vel_fig, vel_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Message = "正在导出第 4 张图片 (4/4) ...";
                    progress.Value = 0.99999999;
                    exportgraphics(app.obs_vel_err_fig, vel_err_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Value = 1;
                else
                    progress.Message = "正在导出第 1 张图片 (1/4) ...";
                    progress.Value = 0.25;
                    exportgraphics(app.obs_anglevel_fig, anglevel_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Message = "正在导出第 2 张图片 (2/4) ...";
                    progress.Value = 0.5;
                    exportgraphics(app.obs_anglevel_err_fig, anglevel_err_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Message = "正在导出第 3 张图片 (3/4) ...";
                    progress.Value = 0.75;
                    exportgraphics(app.obs_vel_fig, vel_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Message = "正在导出第 4 张图片 (4/4) ...";
                    progress.Value = 0.99999999;
                    exportgraphics(app.obs_vel_err_fig, vel_err_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Value = 1;
                end
            catch exception
                uialert(app.UIFigure, exception.message, "导出结果图片错误");
                return;
            end
            uialert(app.UIFigure, sprintf(['成功导出结果到文件:\n' anglevel_filename '\n' anglevel_err_filename ...
                '\n' vel_filename '\n' vel_err_filename]), '结果导出成功', 'Icon', 'success');
        end

        % Button pushed function: export_observer_result_2
        function export_observer_result_2ButtonPushed(app, ~)
            [outfile, outpath] = uiputfile({'*.pdf', '*.png'},'Save Observer Simulation Results','observer_2.pdf');
            % user cancel operation
            if outpath == 0
                return;
            end
            % show progress bar
            progress = uiprogressdlg(app.UIFigure, "Message", "正在准备导出 ...");
            [~, filename, extension] = fileparts(outfile);
            outpath = [outpath filename];
            if ~exist(outpath, "dir")
                mkdir(outpath);
            end
            angle_filename = [outpath '/angle_obs' extension];
            angle_err_filename = [outpath '/angle_obs_err' extension];
            position_filename = [outpath '/position_obs' extension];
            position_err_filename = [outpath '/position_obs_err' extension];
            pause(1.2);
            try
                if extension == ".png"
                    progress.Message = "正在导出第 1 张图片 (1/4) ...";
                    progress.Value = 0.25;
                    exportgraphics(app.obs_angle_fig, angle_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Message = "正在导出第 2 张图片 (2/4) ...";
                    progress.Value = 0.5;
                    exportgraphics(app.obs_angle_err_fig, angle_err_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Message = "正在导出第 3 张图片 (3/4) ...";
                    progress.Value = 0.75;
                    exportgraphics(app.obs_position_fig, position_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Message = "正在导出第 4 张图片 (4/4) ...";
                    progress.Value = 0.99999999;
                    exportgraphics(app.obs_position_err_fig, position_err_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Value = 1;
                else
                    progress.Message = "正在导出第 1 张图片 (1/4) ...";
                    progress.Value = 0.25;
                    exportgraphics(app.obs_angle_fig, angle_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Message = "正在导出第 2 张图片 (2/4) ...";
                    progress.Value = 0.5;
                    exportgraphics(app.obs_angle_err_fig, angle_err_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Message = "正在导出第 3 张图片 (3/4) ...";
                    progress.Value = 0.75;
                    exportgraphics(app.obs_position_fig, position_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Message = "正在导出第 4 张图片 (4/4) ...";
                    progress.Value = 0.99999999;
                    exportgraphics(app.obs_position_err_fig, position_err_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Value = 1;
                end
            catch exception
                uialert(app.UIFigure, exception.message, "导出结果图片错误");
                return;
            end
            uialert(app.UIFigure, sprintf(['成功导出结果到文件:\n' angle_filename '\n' angle_err_filename ...
                '\n' position_filename '\n' position_err_filename]), '结果导出成功', 'Icon', 'success');
        end

        % Button pushed function: export_system_result
        function export_system_resultButtonPushed(app, ~)
            [outfile, outpath] = uiputfile({'*.pdf', '*.png'},'Save System Performance Results','system.pdf');
            % user cancel operation
            if outpath == 0
                return;
            end
            % show progress bar
            progress = uiprogressdlg(app.UIFigure, "Message", "正在准备导出 ...");
            [~, filename, extension] = fileparts(outfile);
            outpath = [outpath filename];
            if ~exist(outpath, "dir")
                mkdir(outpath);
            end
            open_system_filename = [outpath '/open_performance' extension];
            close_system_filename = [outpath '/close_performance' extension];
            pause(1.2);
            try
                if extension == ".png"
                    progress.Message = "正在导出第 1 张图片 (1/2) ...";
                    progress.Value = 0.5;
                    exportgraphics(app.open_system_fig, open_system_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Message = "正在导出第 2 张图片 (2/2) ...";
                    progress.Value = 0.99999999;
                    exportgraphics(app.close_system_fig, close_system_filename, "ContentType", "image");
                    pause(1.2);
                    progress.Value = 1;
                else
                    progress.Message = "正在导出第 1 张图片 (1/2) ...";
                    progress.Value = 0.5;
                    exportgraphics(app.open_system_fig, open_system_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Message = "正在导出第 2 张图片 (2/2) ...";
                    progress.Value = 0.99999999;
                    exportgraphics(app.close_system_fig, close_system_filename, "ContentType", "vector");
                    pause(1.2);
                    progress.Value = 1;
                end
            catch exception
                uialert(app.UIFigure, exception.message, "导出结果图片错误");
                return;
            end
            uialert(app.UIFigure, sprintf(['成功导出结果到文件:\n' open_system_filename '\n' close_system_filename]), '结果导出成功', 'Icon', 'success');
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [1 1 1];
            app.UIFigure.Position = [100 100 768 670];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create Label
            app.Label = uilabel(app.UIFigure);
            app.Label.HorizontalAlignment = 'center';
            app.Label.FontSize = 20;
            app.Label.FontWeight = 'bold';
            app.Label.Position = [11 634 732 26];
            app.Label.Text = '一阶倒立摆仿真控制程序';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 -1 769 625];

            % Create Tab
            app.Tab = uitab(app.TabGroup);
            app.Tab.Title = '主程序';
            app.Tab.BackgroundColor = [1 1 1];

            % Create Label_11
            app.Label_11 = uilabel(app.Tab);
            app.Label_11.FontSize = 14;
            app.Label_11.FontWeight = 'bold';
            app.Label_11.Position = [20 567 75 22];
            app.Label_11.Text = '模型文件：';

            % Create openfile
            app.openfile = uibutton(app.Tab, 'push');
            app.openfile.ButtonPushedFcn = createCallbackFcn(app, @openfileButtonPushed, true);
            app.openfile.Position = [517 565 72 23];
            app.openfile.Text = '打开模型';

            % Create exportfile
            app.exportfile = uibutton(app.Tab, 'push');
            app.exportfile.ButtonPushedFcn = createCallbackFcn(app, @exportfileButtonPushed, true);
            app.exportfile.Position = [677 565 72 23];
            app.exportfile.Text = '导出模型';

            % Create editfile
            app.editfile = uibutton(app.Tab, 'push');
            app.editfile.ButtonPushedFcn = createCallbackFcn(app, @editfileButtonPushed, true);
            app.editfile.Position = [598 565 72 23];
            app.editfile.Text = '编辑模型';

            % Create filedir_txt
            app.filedir_txt = uieditfield(app.Tab, 'text');
            app.filedir_txt.Editable = 'off';
            app.filedir_txt.FontSize = 14;
            app.filedir_txt.Position = [91 565 417 23];

            % Create SimulinkPanel
            app.SimulinkPanel = uipanel(app.Tab);
            app.SimulinkPanel.ForegroundColor = [0 0.4471 0.7412];
            app.SimulinkPanel.Title = 'Simulink 仿真';
            app.SimulinkPanel.BackgroundColor = [1 1 1];
            app.SimulinkPanel.FontWeight = 'bold';
            app.SimulinkPanel.FontSize = 13;
            app.SimulinkPanel.Position = [20 123 381 435];

            % Create angle_fig
            app.angle_fig = uiaxes(app.SimulinkPanel);
            app.angle_fig.FontName = 'Times New Roman';
            app.angle_fig.XGrid = 'on';
            app.angle_fig.YGrid = 'on';
            app.angle_fig.FontSize = 12;
            app.angle_fig.Tag = 'fig1';
            app.angle_fig.Position = [1 223 371 160];

            % Create position_fig
            app.position_fig = uiaxes(app.SimulinkPanel);
            app.position_fig.FontName = 'Times New Roman';
            app.position_fig.XLimitMethod = 'tight';
            app.position_fig.YLimitMethod = 'tight';
            app.position_fig.ZLimitMethod = 'tight';
            app.position_fig.ClippingStyle = 'rectangle';
            app.position_fig.XGrid = 'on';
            app.position_fig.YGrid = 'on';
            app.position_fig.FontSize = 12;
            app.position_fig.Tag = 'fig2';
            app.position_fig.Position = [1 36 371 160];

            % Create Label_9
            app.Label_9 = uilabel(app.SimulinkPanel);
            app.Label_9.FontSize = 14;
            app.Label_9.FontWeight = 'bold';
            app.Label_9.Position = [107 200 159 22];
            app.Label_9.Text = '一阶倒立摆小车位移变化';

            % Create Label_10
            app.Label_10 = uilabel(app.SimulinkPanel);
            app.Label_10.FontSize = 14;
            app.Label_10.FontWeight = 'bold';
            app.Label_10.Position = [121 386 131 22];
            app.Label_10.Text = '一阶倒立摆角度变化';

            % Create hide_linear
            app.hide_linear = uibutton(app.SimulinkPanel, 'push');
            app.hide_linear.ButtonPushedFcn = createCallbackFcn(app, @hide_linearButtonPushed, true);
            app.hide_linear.Position = [137 5 100 28];
            app.hide_linear.Text = '隐藏线性结果';

            % Create hide_nonlinear
            app.hide_nonlinear = uibutton(app.SimulinkPanel, 'push');
            app.hide_nonlinear.ButtonPushedFcn = createCallbackFcn(app, @hide_nonlinearButtonPushed, true);
            app.hide_nonlinear.Position = [16 5 100 28];
            app.hide_nonlinear.Text = '隐藏非线性结果';

            % Create export_result
            app.export_result = uibutton(app.SimulinkPanel, 'push');
            app.export_result.ButtonPushedFcn = createCallbackFcn(app, @export_resultButtonPushed, true);
            app.export_result.Position = [258 5 100 28];
            app.export_result.Text = '导出图片结果';

            % Create DPanel
            app.DPanel = uipanel(app.Tab);
            app.DPanel.ForegroundColor = [0.851 0.3255 0.098];
            app.DPanel.Title = '2D 动画演示';
            app.DPanel.BackgroundColor = [1 1 1];
            app.DPanel.FontWeight = 'bold';
            app.DPanel.FontSize = 13;
            app.DPanel.Position = [412 296 341 262];

            % Create motion_fig
            app.motion_fig = uiaxes(app.DPanel);
            app.motion_fig.Toolbar.Visible = 'off';
            app.motion_fig.FontName = 'Times New Roman';
            app.motion_fig.YColor = 'none';
            app.motion_fig.XGrid = 'on';
            app.motion_fig.FontSize = 12;
            app.motion_fig.Tag = 'fig1';
            app.motion_fig.Position = [2 5 334 230];

            % Create Panel_2
            app.Panel_2 = uipanel(app.Tab);
            app.Panel_2.ForegroundColor = [0.3373 0.4588 0.1804];
            app.Panel_2.Title = '控制器以及输入信号';
            app.Panel_2.BackgroundColor = [1 1 1];
            app.Panel_2.FontWeight = 'bold';
            app.Panel_2.Position = [412 237 342 51];

            % Create controller_choose
            app.controller_choose = uidropdown(app.Panel_2);
            app.controller_choose.Items = {'无控制器(开环)', '状态反馈控制器', '输出反馈控制器', 'LQR反馈控制器'};
            app.controller_choose.Position = [51 3 129 22];
            app.controller_choose.Value = '无控制器(开环)';

            % Create EditField_4Label_10
            app.EditField_4Label_10 = uilabel(app.Panel_2);
            app.EditField_4Label_10.HorizontalAlignment = 'center';
            app.EditField_4Label_10.Position = [6 3 38 22];
            app.EditField_4Label_10.Text = '控制器';

            % Create Label_8
            app.Label_8 = uilabel(app.Panel_2);
            app.Label_8.HorizontalAlignment = 'right';
            app.Label_8.Position = [192 3 42 22];
            app.Label_8.Text = '干扰力';

            % Create signal_choose
            app.signal_choose = uidropdown(app.Panel_2);
            app.signal_choose.Items = {'无输入', '脉冲信号', '阶跃信号', '正弦信号'};
            app.signal_choose.Position = [240 3 92 22];
            app.signal_choose.Value = '无输入';

            % Create Panel_3
            app.Panel_3 = uipanel(app.Tab);
            app.Panel_3.ForegroundColor = [0.851 0.3255 0.098];
            app.Panel_3.Title = '工作空间';
            app.Panel_3.BackgroundColor = [1 1 1];
            app.Panel_3.FontWeight = 'bold';
            app.Panel_3.FontSize = 13;
            app.Panel_3.Position = [412 65 342 162];

            % Create state_txt
            app.state_txt = uilabel(app.Panel_3);
            app.state_txt.HorizontalAlignment = 'center';
            app.state_txt.FontSize = 16;
            app.state_txt.FontWeight = 'bold';
            app.state_txt.Position = [10 107 222 22];
            app.state_txt.Text = '等待用户操作...';

            % Create EditField_4Label_2
            app.EditField_4Label_2 = uilabel(app.Panel_3);
            app.EditField_4Label_2.HorizontalAlignment = 'center';
            app.EditField_4Label_2.Position = [5 42 55 22];
            app.EditField_4Label_2.Text = '仿真时长';

            % Create time_data
            app.time_data = uieditfield(app.Panel_3, 'numeric');
            app.time_data.Limits = [0 Inf];
            app.time_data.HorizontalAlignment = 'center';
            app.time_data.Position = [66 43 52 20];
            app.time_data.Value = 20;

            % Create EditField_4Label_3
            app.EditField_4Label_3 = uilabel(app.Panel_3);
            app.EditField_4Label_3.HorizontalAlignment = 'center';
            app.EditField_4Label_3.Position = [5 11 55 22];
            app.EditField_4Label_3.Text = '仿真步长';

            % Create step_data
            app.step_data = uieditfield(app.Panel_3, 'numeric');
            app.step_data.Limits = [0 1];
            app.step_data.HorizontalAlignment = 'center';
            app.step_data.Position = [66 12 51 20];
            app.step_data.Value = 0.01;

            % Create EditField_4Label_6
            app.EditField_4Label_6 = uilabel(app.Panel_3);
            app.EditField_4Label_6.HorizontalAlignment = 'center';
            app.EditField_4Label_6.Position = [132 42 40 22];
            app.EditField_4Label_6.Text = '初位置';

            % Create init_position_data
            app.init_position_data = uieditfield(app.Panel_3, 'numeric');
            app.init_position_data.HorizontalAlignment = 'center';
            app.init_position_data.Position = [179 43 44 20];

            % Create EditField_4Label_7
            app.EditField_4Label_7 = uilabel(app.Panel_3);
            app.EditField_4Label_7.HorizontalAlignment = 'center';
            app.EditField_4Label_7.Position = [242 42 39 22];
            app.EditField_4Label_7.Text = '初角度';

            % Create init_angle_data
            app.init_angle_data = uieditfield(app.Panel_3, 'numeric');
            app.init_angle_data.HorizontalAlignment = 'center';
            app.init_angle_data.Position = [287 43 46 20];

            % Create EditField_4Label_8
            app.EditField_4Label_8 = uilabel(app.Panel_3);
            app.EditField_4Label_8.HorizontalAlignment = 'center';
            app.EditField_4Label_8.Position = [132 11 41 22];
            app.EditField_4Label_8.Text = '力幅值';

            % Create disturbance_amp_data
            app.disturbance_amp_data = uieditfield(app.Panel_3, 'numeric');
            app.disturbance_amp_data.Limits = [0 Inf];
            app.disturbance_amp_data.HorizontalAlignment = 'center';
            app.disturbance_amp_data.Position = [179 12 44 20];
            app.disturbance_amp_data.Value = 1;

            % Create EditField_4Label_9
            app.EditField_4Label_9 = uilabel(app.Panel_3);
            app.EditField_4Label_9.HorizontalAlignment = 'center';
            app.EditField_4Label_9.Position = [233 11 48 22];
            app.EditField_4Label_9.Text = '频率(Hz)';

            % Create disturbance_rate_data
            app.disturbance_rate_data = uieditfield(app.Panel_3, 'numeric');
            app.disturbance_rate_data.Limits = [0 60];
            app.disturbance_rate_data.HorizontalAlignment = 'center';
            app.disturbance_rate_data.Position = [287 12 46 20];
            app.disturbance_rate_data.Value = 1;

            % Create Label_12
            app.Label_12 = uilabel(app.Panel_3);
            app.Label_12.HorizontalAlignment = 'right';
            app.Label_12.Position = [8 74 48 22];
            app.Label_12.Text = '仿真模型';

            % Create sim_mode_choose
            app.sim_mode_choose = uidropdown(app.Panel_3);
            app.sim_mode_choose.Items = {'线性模型', '非线性模型', '线性/非线性模型对比', '离散线性模型'};
            app.sim_mode_choose.Position = [67 74 156 22];
            app.sim_mode_choose.Value = '线性模型';

            % Create observer_checkbox
            app.observer_checkbox = uicheckbox(app.Panel_3);
            app.observer_checkbox.Text = '状态观测器';
            app.observer_checkbox.Position = [255 107 80 22];

            % Create EditField_4Label_72
            app.EditField_4Label_72 = uilabel(app.Panel_3);
            app.EditField_4Label_72.HorizontalAlignment = 'center';
            app.EditField_4Label_72.Position = [225 74 59 22];
            app.EditField_4Label_72.Text = '采样时间';

            % Create sample_time_data
            app.sample_time_data = uieditfield(app.Panel_3, 'numeric');
            app.sample_time_data.Limits = [0 Inf];
            app.sample_time_data.HorizontalAlignment = 'center';
            app.sample_time_data.Position = [287 75 46 20];
            app.sample_time_data.Value = 0.05;

            % Create Panel
            app.Panel = uipanel(app.Tab);
            app.Panel.ForegroundColor = [0 0.4471 0.7412];
            app.Panel.Title = '参数设计';
            app.Panel.BackgroundColor = [1 1 1];
            app.Panel.FontWeight = 'bold';
            app.Panel.FontSize = 13;
            app.Panel.Position = [22 20 381 90];

            % Create Label_2
            app.Label_2 = uilabel(app.Panel);
            app.Label_2.HorizontalAlignment = 'center';
            app.Label_2.Position = [8 6 55 22];
            app.Label_2.Text = '摆的质量';

            % Create mass_data
            app.mass_data = uieditfield(app.Panel, 'numeric');
            app.mass_data.Limits = [0 Inf];
            app.mass_data.HorizontalAlignment = 'center';
            app.mass_data.Position = [69 7 55 20];
            app.mass_data.Value = 0.12;

            % Create EditField_4Label
            app.EditField_4Label = uilabel(app.Panel);
            app.EditField_4Label.HorizontalAlignment = 'center';
            app.EditField_4Label.Position = [8 37 55 19];
            app.EditField_4Label.Text = '小车质量';

            % Create car_mass_data
            app.car_mass_data = uieditfield(app.Panel, 'numeric');
            app.car_mass_data.Limits = [0 Inf];
            app.car_mass_data.HorizontalAlignment = 'center';
            app.car_mass_data.Position = [69 36 55 20];
            app.car_mass_data.Value = 2;

            % Create Label_3
            app.Label_3 = uilabel(app.Panel);
            app.Label_3.HorizontalAlignment = 'center';
            app.Label_3.Position = [133 6 55 22];
            app.Label_3.Text = '转动惯量';

            % Create J_data
            app.J_data = uieditfield(app.Panel, 'numeric');
            app.J_data.Limits = [0 Inf];
            app.J_data.HorizontalAlignment = 'center';
            app.J_data.Position = [194 7 55 20];

            % Create Label_4
            app.Label_4 = uilabel(app.Panel);
            app.Label_4.HorizontalAlignment = 'center';
            app.Label_4.Position = [133 35 55 22];
            app.Label_4.Text = '摩擦因素';

            % Create mu_data
            app.mu_data = uieditfield(app.Panel, 'numeric');
            app.mu_data.Limits = [0 1];
            app.mu_data.HorizontalAlignment = 'center';
            app.mu_data.Position = [194 36 55 20];

            % Create Label_5
            app.Label_5 = uilabel(app.Panel);
            app.Label_5.HorizontalAlignment = 'center';
            app.Label_5.Position = [255 6 34 22];
            app.Label_5.Text = '摆长';

            % Create length_data
            app.length_data = uieditfield(app.Panel, 'numeric');
            app.length_data.Limits = [0 Inf];
            app.length_data.HorizontalAlignment = 'center';
            app.length_data.Position = [296 7 71 20];
            app.length_data.Value = 1;

            % Create Label_76
            app.Label_76 = uilabel(app.Panel);
            app.Label_76.HorizontalAlignment = 'right';
            app.Label_76.Position = [260 35 24 22];
            app.Label_76.Text = '方向';

            % Create rotation_mode
            app.rotation_mode = uidropdown(app.Panel);
            app.rotation_mode.Items = {'顺时针', '逆时针'};
            app.rotation_mode.Position = [296 35 71 22];
            app.rotation_mode.Value = '逆时针';

            % Create start
            app.start = uibutton(app.Tab, 'push');
            app.start.ButtonPushedFcn = createCallbackFcn(app, @startButtonPushed, true);
            app.start.Position = [415 22 81 32];
            app.start.Text = '开始仿真';

            % Create play
            app.play = uibutton(app.Tab, 'push');
            app.play.ButtonPushedFcn = createCallbackFcn(app, @playButtonPushed, true);
            app.play.Enable = 'off';
            app.play.Position = [502 22 81 32];
            app.play.Text = '播放动画';

            % Create exit
            app.exit = uibutton(app.Tab, 'push');
            app.exit.ButtonPushedFcn = createCallbackFcn(app, @exitButtonPushed, true);
            app.exit.Position = [676 22 81 32];
            app.exit.Text = '退出程序';

            % Create replay
            app.replay = uibutton(app.Tab, 'push');
            app.replay.ButtonPushedFcn = createCallbackFcn(app, @replayButtonPushed, true);
            app.replay.Enable = 'off';
            app.replay.Position = [589 22 81 32];
            app.replay.Text = '重新播放';

            % Create Tab_2
            app.Tab_2 = uitab(app.TabGroup);
            app.Tab_2.Title = '控制器设置';
            app.Tab_2.BackgroundColor = [1 1 1];

            % Create Panel_4
            app.Panel_4 = uipanel(app.Tab_2);
            app.Panel_4.ForegroundColor = [0 0.4471 0.7412];
            app.Panel_4.Title = '状态反馈控制器设置';
            app.Panel_4.BackgroundColor = [1 1 1];
            app.Panel_4.FontWeight = 'bold';
            app.Panel_4.FontSize = 15;
            app.Panel_4.Position = [27 454 717 128];

            % Create EditField_4Label_11
            app.EditField_4Label_11 = uilabel(app.Panel_4);
            app.EditField_4Label_11.HorizontalAlignment = 'center';
            app.EditField_4Label_11.FontName = 'Times New Roman';
            app.EditField_4Label_11.FontSize = 14;
            app.EditField_4Label_11.FontAngle = 'italic';
            app.EditField_4Label_11.Position = [115 68 28 24];
            app.EditField_4Label_11.Text = 'θ';

            % Create state_feedback_theta
            app.state_feedback_theta = uieditfield(app.Panel_4, 'numeric');
            app.state_feedback_theta.HorizontalAlignment = 'center';
            app.state_feedback_theta.Position = [152 68 58 23];

            % Create EditField_4Label_12
            app.EditField_4Label_12 = uilabel(app.Panel_4);
            app.EditField_4Label_12.HorizontalAlignment = 'center';
            app.EditField_4Label_12.FontName = 'Times New Roman';
            app.EditField_4Label_12.FontSize = 14;
            app.EditField_4Label_12.FontAngle = 'italic';
            app.EditField_4Label_12.Position = [229 68 28 24];
            app.EditField_4Label_12.Text = 'dθ';

            % Create state_feedback_dtheta
            app.state_feedback_dtheta = uieditfield(app.Panel_4, 'numeric');
            app.state_feedback_dtheta.HorizontalAlignment = 'center';
            app.state_feedback_dtheta.Position = [266 68 58 23];

            % Create EditField_4Label_13
            app.EditField_4Label_13 = uilabel(app.Panel_4);
            app.EditField_4Label_13.HorizontalAlignment = 'center';
            app.EditField_4Label_13.FontName = 'Times New Roman';
            app.EditField_4Label_13.FontSize = 14;
            app.EditField_4Label_13.FontAngle = 'italic';
            app.EditField_4Label_13.Position = [342 68 28 24];
            app.EditField_4Label_13.Text = 'x';

            % Create state_feedback_x
            app.state_feedback_x = uieditfield(app.Panel_4, 'numeric');
            app.state_feedback_x.HorizontalAlignment = 'center';
            app.state_feedback_x.Position = [379 68 58 23];

            % Create EditField_4Label_14
            app.EditField_4Label_14 = uilabel(app.Panel_4);
            app.EditField_4Label_14.HorizontalAlignment = 'center';
            app.EditField_4Label_14.FontName = 'Times New Roman';
            app.EditField_4Label_14.FontSize = 14;
            app.EditField_4Label_14.FontAngle = 'italic';
            app.EditField_4Label_14.Position = [456 68 28 24];
            app.EditField_4Label_14.Text = 'dx';

            % Create state_feedback_dx
            app.state_feedback_dx = uieditfield(app.Panel_4, 'numeric');
            app.state_feedback_dx.HorizontalAlignment = 'center';
            app.state_feedback_dx.Position = [493 68 58 23];

            % Create Label_13
            app.Label_13 = uilabel(app.Panel_4);
            app.Label_13.FontSize = 14;
            app.Label_13.FontWeight = 'bold';
            app.Label_13.Position = [32 69 61 22];
            app.Label_13.Text = '期望状态';

            % Create Label_14
            app.Label_14 = uilabel(app.Panel_4);
            app.Label_14.FontSize = 14;
            app.Label_14.FontWeight = 'bold';
            app.Label_14.Position = [32 22 61 22];
            app.Label_14.Text = '期望极点';

            % Create s1Panel
            app.s1Panel = uipanel(app.Panel_4);
            app.s1Panel.ForegroundColor = [0 0 0];
            app.s1Panel.TitlePosition = 'centertop';
            app.s1Panel.Title = 's1';
            app.s1Panel.BackgroundColor = [1 1 1];
            app.s1Panel.Position = [119 9 127 48];

            % Create s1_real
            app.s1_real = uieditfield(app.s1Panel, 'numeric');
            app.s1_real.Limits = [-Inf 0];
            app.s1_real.HorizontalAlignment = 'center';
            app.s1_real.Position = [6 5 41 19];
            app.s1_real.Value = -0.707;

            % Create s1_image
            app.s1_image = uieditfield(app.s1Panel, 'numeric');
            app.s1_image.Limits = [0 Inf];
            app.s1_image.HorizontalAlignment = 'center';
            app.s1_image.Position = [67 5 41 19];
            app.s1_image.Value = 0.707;

            % Create Label_15
            app.Label_15 = uilabel(app.s1Panel);
            app.Label_15.FontName = 'Times New Roman';
            app.Label_15.FontSize = 14;
            app.Label_15.Position = [52 4 10 22];
            app.Label_15.Text = '+';

            % Create iLabel
            app.iLabel = uilabel(app.s1Panel);
            app.iLabel.FontName = 'Times New Roman';
            app.iLabel.FontSize = 14;
            app.iLabel.FontAngle = 'italic';
            app.iLabel.Position = [114 4 11 22];
            app.iLabel.Text = 'i';

            % Create s2Panel
            app.s2Panel = uipanel(app.Panel_4);
            app.s2Panel.ForegroundColor = [0 0 0];
            app.s2Panel.TitlePosition = 'centertop';
            app.s2Panel.Title = 's2';
            app.s2Panel.BackgroundColor = [1 1 1];
            app.s2Panel.Position = [269 9 127 48];

            % Create s2_real
            app.s2_real = uieditfield(app.s2Panel, 'numeric');
            app.s2_real.Limits = [-Inf 0];
            app.s2_real.HorizontalAlignment = 'center';
            app.s2_real.Position = [6 5 41 19];
            app.s2_real.Value = -0.707;

            % Create s2_image
            app.s2_image = uieditfield(app.s2Panel, 'numeric');
            app.s2_image.Limits = [0 Inf];
            app.s2_image.HorizontalAlignment = 'center';
            app.s2_image.Position = [67 5 41 19];
            app.s2_image.Value = 0.707;

            % Create Label_16
            app.Label_16 = uilabel(app.s2Panel);
            app.Label_16.FontName = 'Times New Roman';
            app.Label_16.FontSize = 14;
            app.Label_16.Position = [54 4 25 22];
            app.Label_16.Text = '-';

            % Create iLabel_2
            app.iLabel_2 = uilabel(app.s2Panel);
            app.iLabel_2.FontName = 'Times New Roman';
            app.iLabel_2.FontSize = 14;
            app.iLabel_2.FontAngle = 'italic';
            app.iLabel_2.Position = [114 4 11 22];
            app.iLabel_2.Text = 'i';

            % Create s3Panel
            app.s3Panel = uipanel(app.Panel_4);
            app.s3Panel.ForegroundColor = [0 0 0];
            app.s3Panel.TitlePosition = 'centertop';
            app.s3Panel.Title = 's3';
            app.s3Panel.BackgroundColor = [1 1 1];
            app.s3Panel.Position = [423 9 127 48];

            % Create s3_real
            app.s3_real = uieditfield(app.s3Panel, 'numeric');
            app.s3_real.Limits = [-Inf 0];
            app.s3_real.HorizontalAlignment = 'center';
            app.s3_real.Position = [6 5 41 19];
            app.s3_real.Value = -5.6569;

            % Create s3_image
            app.s3_image = uieditfield(app.s3Panel, 'numeric');
            app.s3_image.Limits = [0 Inf];
            app.s3_image.HorizontalAlignment = 'center';
            app.s3_image.Position = [67 5 41 19];

            % Create Label_17
            app.Label_17 = uilabel(app.s3Panel);
            app.Label_17.FontName = 'Times New Roman';
            app.Label_17.FontSize = 14;
            app.Label_17.Position = [52 4 10 22];
            app.Label_17.Text = '+';

            % Create iLabel_3
            app.iLabel_3 = uilabel(app.s3Panel);
            app.iLabel_3.FontName = 'Times New Roman';
            app.iLabel_3.FontSize = 14;
            app.iLabel_3.FontAngle = 'italic';
            app.iLabel_3.Position = [114 4 11 22];
            app.iLabel_3.Text = 'i';

            % Create s4Panel
            app.s4Panel = uipanel(app.Panel_4);
            app.s4Panel.ForegroundColor = [0 0 0];
            app.s4Panel.TitlePosition = 'centertop';
            app.s4Panel.Title = 's4';
            app.s4Panel.BackgroundColor = [1 1 1];
            app.s4Panel.Position = [572 9 127 48];

            % Create s4_real
            app.s4_real = uieditfield(app.s4Panel, 'numeric');
            app.s4_real.Limits = [-Inf 0];
            app.s4_real.HorizontalAlignment = 'center';
            app.s4_real.Position = [6 5 41 19];
            app.s4_real.Value = -5.6569;

            % Create s4_image
            app.s4_image = uieditfield(app.s4Panel, 'numeric');
            app.s4_image.Limits = [0 Inf];
            app.s4_image.HorizontalAlignment = 'center';
            app.s4_image.Position = [67 5 41 19];

            % Create Label_18
            app.Label_18 = uilabel(app.s4Panel);
            app.Label_18.FontName = 'Times New Roman';
            app.Label_18.FontSize = 14;
            app.Label_18.Position = [54 4 25 22];
            app.Label_18.Text = '-';

            % Create iLabel_4
            app.iLabel_4 = uilabel(app.s4Panel);
            app.iLabel_4.FontName = 'Times New Roman';
            app.iLabel_4.FontSize = 14;
            app.iLabel_4.FontAngle = 'italic';
            app.iLabel_4.Position = [114 4 11 22];
            app.iLabel_4.Text = 'i';

            % Create Label_68
            app.Label_68 = uilabel(app.Panel_4);
            app.Label_68.FontSize = 14;
            app.Label_68.FontWeight = 'bold';
            app.Label_68.Position = [583 69 102 22];
            app.Label_68.Text = '单位：弧度 / 米';

            % Create Panel_5
            app.Panel_5 = uipanel(app.Tab_2);
            app.Panel_5.ForegroundColor = [0 0.451 0.7412];
            app.Panel_5.Title = '输出反馈控制器设置';
            app.Panel_5.BackgroundColor = [1 1 1];
            app.Panel_5.FontWeight = 'bold';
            app.Panel_5.FontSize = 15;
            app.Panel_5.Position = [27 311 717 128];

            % Create Label_21
            app.Label_21 = uilabel(app.Panel_5);
            app.Label_21.FontSize = 14;
            app.Label_21.FontWeight = 'bold';
            app.Label_21.Position = [31 68 61 22];
            app.Label_21.Text = '期望输出';

            % Create Label_22
            app.Label_22 = uilabel(app.Panel_5);
            app.Label_22.FontSize = 14;
            app.Label_22.FontWeight = 'bold';
            app.Label_22.Position = [31 20 61 22];
            app.Label_22.Text = '期望极点';

            % Create s1Panel_2
            app.s1Panel_2 = uipanel(app.Panel_5);
            app.s1Panel_2.ForegroundColor = [0 0 0];
            app.s1Panel_2.TitlePosition = 'centertop';
            app.s1Panel_2.Title = 's1';
            app.s1Panel_2.BackgroundColor = [1 1 1];
            app.s1Panel_2.Position = [118 7 127 48];

            % Create s1_real_2
            app.s1_real_2 = uieditfield(app.s1Panel_2, 'numeric');
            app.s1_real_2.Limits = [-Inf 0];
            app.s1_real_2.Editable = 'off';
            app.s1_real_2.HorizontalAlignment = 'center';
            app.s1_real_2.Position = [6 5 41 19];

            % Create s1_image_2
            app.s1_image_2 = uieditfield(app.s1Panel_2, 'numeric');
            app.s1_image_2.Limits = [0 Inf];
            app.s1_image_2.HorizontalAlignment = 'center';
            app.s1_image_2.Position = [67 5 41 19];
            app.s1_image_2.Value = 1;

            % Create Label_23
            app.Label_23 = uilabel(app.s1Panel_2);
            app.Label_23.FontName = 'Times New Roman';
            app.Label_23.FontSize = 14;
            app.Label_23.Position = [52 4 10 22];
            app.Label_23.Text = '+';

            % Create iLabel_5
            app.iLabel_5 = uilabel(app.s1Panel_2);
            app.iLabel_5.FontName = 'Times New Roman';
            app.iLabel_5.FontSize = 14;
            app.iLabel_5.FontAngle = 'italic';
            app.iLabel_5.Position = [114 4 11 22];
            app.iLabel_5.Text = 'i';

            % Create s2Panel_2
            app.s2Panel_2 = uipanel(app.Panel_5);
            app.s2Panel_2.ForegroundColor = [0 0 0];
            app.s2Panel_2.TitlePosition = 'centertop';
            app.s2Panel_2.Title = 's2';
            app.s2Panel_2.BackgroundColor = [1 1 1];
            app.s2Panel_2.Position = [268 7 127 48];

            % Create s2_real_2
            app.s2_real_2 = uieditfield(app.s2Panel_2, 'numeric');
            app.s2_real_2.Limits = [-Inf 0];
            app.s2_real_2.Editable = 'off';
            app.s2_real_2.HorizontalAlignment = 'center';
            app.s2_real_2.Position = [6 5 41 19];

            % Create s2_image_2
            app.s2_image_2 = uieditfield(app.s2Panel_2, 'numeric');
            app.s2_image_2.Limits = [0 Inf];
            app.s2_image_2.HorizontalAlignment = 'center';
            app.s2_image_2.Position = [67 5 41 19];
            app.s2_image_2.Value = 1;

            % Create Label_24
            app.Label_24 = uilabel(app.s2Panel_2);
            app.Label_24.FontName = 'Times New Roman';
            app.Label_24.FontSize = 14;
            app.Label_24.Position = [54 4 25 22];
            app.Label_24.Text = '-';

            % Create iLabel_6
            app.iLabel_6 = uilabel(app.s2Panel_2);
            app.iLabel_6.FontName = 'Times New Roman';
            app.iLabel_6.FontSize = 14;
            app.iLabel_6.FontAngle = 'italic';
            app.iLabel_6.Position = [114 4 11 22];
            app.iLabel_6.Text = 'i';

            % Create s3Panel_2
            app.s3Panel_2 = uipanel(app.Panel_5);
            app.s3Panel_2.ForegroundColor = [0 0 0];
            app.s3Panel_2.TitlePosition = 'centertop';
            app.s3Panel_2.Title = 's3';
            app.s3Panel_2.BackgroundColor = [1 1 1];
            app.s3Panel_2.Position = [422 7 127 48];

            % Create s3_real_2
            app.s3_real_2 = uieditfield(app.s3Panel_2, 'numeric');
            app.s3_real_2.Limits = [-Inf 0];
            app.s3_real_2.Editable = 'off';
            app.s3_real_2.HorizontalAlignment = 'center';
            app.s3_real_2.Position = [6 5 41 19];

            % Create s3_image_2
            app.s3_image_2 = uieditfield(app.s3Panel_2, 'numeric');
            app.s3_image_2.Limits = [0 Inf];
            app.s3_image_2.HorizontalAlignment = 'center';
            app.s3_image_2.Position = [67 5 41 19];
            app.s3_image_2.Value = 8;

            % Create Label_25
            app.Label_25 = uilabel(app.s3Panel_2);
            app.Label_25.FontName = 'Times New Roman';
            app.Label_25.FontSize = 14;
            app.Label_25.Position = [52 4 10 22];
            app.Label_25.Text = '+';

            % Create iLabel_7
            app.iLabel_7 = uilabel(app.s3Panel_2);
            app.iLabel_7.FontName = 'Times New Roman';
            app.iLabel_7.FontSize = 14;
            app.iLabel_7.FontAngle = 'italic';
            app.iLabel_7.Position = [114 4 11 22];
            app.iLabel_7.Text = 'i';

            % Create s4Panel_2
            app.s4Panel_2 = uipanel(app.Panel_5);
            app.s4Panel_2.ForegroundColor = [0 0 0];
            app.s4Panel_2.TitlePosition = 'centertop';
            app.s4Panel_2.Title = 's4';
            app.s4Panel_2.BackgroundColor = [1 1 1];
            app.s4Panel_2.Position = [571 7 127 48];

            % Create s4_real_2
            app.s4_real_2 = uieditfield(app.s4Panel_2, 'numeric');
            app.s4_real_2.Limits = [-Inf 0];
            app.s4_real_2.Editable = 'off';
            app.s4_real_2.HorizontalAlignment = 'center';
            app.s4_real_2.Position = [6 5 41 19];

            % Create s4_image_2
            app.s4_image_2 = uieditfield(app.s4Panel_2, 'numeric');
            app.s4_image_2.Limits = [0 Inf];
            app.s4_image_2.HorizontalAlignment = 'center';
            app.s4_image_2.Position = [67 5 41 19];
            app.s4_image_2.Value = 8;

            % Create Label_26
            app.Label_26 = uilabel(app.s4Panel_2);
            app.Label_26.FontName = 'Times New Roman';
            app.Label_26.FontSize = 14;
            app.Label_26.Position = [54 4 25 22];
            app.Label_26.Text = '-';

            % Create iLabel_8
            app.iLabel_8 = uilabel(app.s4Panel_2);
            app.iLabel_8.FontName = 'Times New Roman';
            app.iLabel_8.FontSize = 14;
            app.iLabel_8.FontAngle = 'italic';
            app.iLabel_8.Position = [114 4 11 22];
            app.iLabel_8.Text = 'i';

            % Create EditField_4Label_23
            app.EditField_4Label_23 = uilabel(app.Panel_5);
            app.EditField_4Label_23.HorizontalAlignment = 'center';
            app.EditField_4Label_23.FontName = 'Times New Roman';
            app.EditField_4Label_23.FontSize = 14;
            app.EditField_4Label_23.FontAngle = 'italic';
            app.EditField_4Label_23.Position = [114 67 28 24];
            app.EditField_4Label_23.Text = 'θ';

            % Create out_feedback_theta
            app.out_feedback_theta = uieditfield(app.Panel_5, 'numeric');
            app.out_feedback_theta.HorizontalAlignment = 'center';
            app.out_feedback_theta.Position = [151 67 58 23];

            % Create EditField_4Label_25
            app.EditField_4Label_25 = uilabel(app.Panel_5);
            app.EditField_4Label_25.HorizontalAlignment = 'center';
            app.EditField_4Label_25.FontName = 'Times New Roman';
            app.EditField_4Label_25.FontSize = 14;
            app.EditField_4Label_25.FontAngle = 'italic';
            app.EditField_4Label_25.Position = [229 67 28 24];
            app.EditField_4Label_25.Text = 'x';

            % Create out_feedback_x
            app.out_feedback_x = uieditfield(app.Panel_5, 'numeric');
            app.out_feedback_x.HorizontalAlignment = 'center';
            app.out_feedback_x.Position = [266 67 58 23];

            % Create Label_69
            app.Label_69 = uilabel(app.Panel_5);
            app.Label_69.FontSize = 14;
            app.Label_69.FontWeight = 'bold';
            app.Label_69.Position = [350 68 102 22];
            app.Label_69.Text = '单位：弧度 / 米';

            % Create Panel_6
            app.Panel_6 = uipanel(app.Tab_2);
            app.Panel_6.ForegroundColor = [0 0.4471 0.7412];
            app.Panel_6.Title = '状态观测器设置';
            app.Panel_6.BackgroundColor = [1 1 1];
            app.Panel_6.FontWeight = 'bold';
            app.Panel_6.FontSize = 15;
            app.Panel_6.Position = [27 165 717 128];

            % Create Label_29
            app.Label_29 = uilabel(app.Panel_6);
            app.Label_29.FontSize = 14;
            app.Label_29.FontWeight = 'bold';
            app.Label_29.Position = [32 69 61 22];
            app.Label_29.Text = '初始状态';

            % Create Label_30
            app.Label_30 = uilabel(app.Panel_6);
            app.Label_30.FontSize = 14;
            app.Label_30.FontWeight = 'bold';
            app.Label_30.Position = [32 21 61 22];
            app.Label_30.Text = '期望极点';

            % Create s1Panel_3
            app.s1Panel_3 = uipanel(app.Panel_6);
            app.s1Panel_3.ForegroundColor = [0 0 0];
            app.s1Panel_3.TitlePosition = 'centertop';
            app.s1Panel_3.Title = 's1';
            app.s1Panel_3.BackgroundColor = [1 1 1];
            app.s1Panel_3.Position = [119 8 127 48];

            % Create s1_real_3
            app.s1_real_3 = uieditfield(app.s1Panel_3, 'numeric');
            app.s1_real_3.Limits = [-Inf 0];
            app.s1_real_3.HorizontalAlignment = 'center';
            app.s1_real_3.Position = [6 5 41 19];
            app.s1_real_3.Value = -2.8284;

            % Create s1_image_3
            app.s1_image_3 = uieditfield(app.s1Panel_3, 'numeric');
            app.s1_image_3.Limits = [0 Inf];
            app.s1_image_3.HorizontalAlignment = 'center';
            app.s1_image_3.Position = [67 5 41 19];
            app.s1_image_3.Value = 2.8284;

            % Create Label_31
            app.Label_31 = uilabel(app.s1Panel_3);
            app.Label_31.FontName = 'Times New Roman';
            app.Label_31.FontSize = 14;
            app.Label_31.Position = [52 4 10 22];
            app.Label_31.Text = '+';

            % Create iLabel_9
            app.iLabel_9 = uilabel(app.s1Panel_3);
            app.iLabel_9.FontName = 'Times New Roman';
            app.iLabel_9.FontSize = 14;
            app.iLabel_9.FontAngle = 'italic';
            app.iLabel_9.Position = [114 4 11 22];
            app.iLabel_9.Text = 'i';

            % Create s2Panel_3
            app.s2Panel_3 = uipanel(app.Panel_6);
            app.s2Panel_3.ForegroundColor = [0 0 0];
            app.s2Panel_3.TitlePosition = 'centertop';
            app.s2Panel_3.Title = 's2';
            app.s2Panel_3.BackgroundColor = [1 1 1];
            app.s2Panel_3.Position = [269 8 127 48];

            % Create s2_real_3
            app.s2_real_3 = uieditfield(app.s2Panel_3, 'numeric');
            app.s2_real_3.Limits = [-Inf 0];
            app.s2_real_3.HorizontalAlignment = 'center';
            app.s2_real_3.Position = [6 5 41 19];
            app.s2_real_3.Value = -2.8284;

            % Create s2_image_3
            app.s2_image_3 = uieditfield(app.s2Panel_3, 'numeric');
            app.s2_image_3.Limits = [0 Inf];
            app.s2_image_3.HorizontalAlignment = 'center';
            app.s2_image_3.Position = [67 5 41 19];
            app.s2_image_3.Value = 2.8284;

            % Create Label_32
            app.Label_32 = uilabel(app.s2Panel_3);
            app.Label_32.FontName = 'Times New Roman';
            app.Label_32.FontSize = 14;
            app.Label_32.Position = [54 4 25 22];
            app.Label_32.Text = '-';

            % Create iLabel_10
            app.iLabel_10 = uilabel(app.s2Panel_3);
            app.iLabel_10.FontName = 'Times New Roman';
            app.iLabel_10.FontSize = 14;
            app.iLabel_10.FontAngle = 'italic';
            app.iLabel_10.Position = [114 4 11 22];
            app.iLabel_10.Text = 'i';

            % Create s3Panel_3
            app.s3Panel_3 = uipanel(app.Panel_6);
            app.s3Panel_3.ForegroundColor = [0 0 0];
            app.s3Panel_3.TitlePosition = 'centertop';
            app.s3Panel_3.Title = 's3';
            app.s3Panel_3.BackgroundColor = [1 1 1];
            app.s3Panel_3.Position = [423 8 127 48];

            % Create s3_real_3
            app.s3_real_3 = uieditfield(app.s3Panel_3, 'numeric');
            app.s3_real_3.Limits = [-Inf 0];
            app.s3_real_3.HorizontalAlignment = 'center';
            app.s3_real_3.Position = [6 5 41 19];
            app.s3_real_3.Value = -22.6274;

            % Create s3_image_3
            app.s3_image_3 = uieditfield(app.s3Panel_3, 'numeric');
            app.s3_image_3.Limits = [0 Inf];
            app.s3_image_3.HorizontalAlignment = 'center';
            app.s3_image_3.Position = [67 5 41 19];

            % Create Label_33
            app.Label_33 = uilabel(app.s3Panel_3);
            app.Label_33.FontName = 'Times New Roman';
            app.Label_33.FontSize = 14;
            app.Label_33.Position = [52 4 10 22];
            app.Label_33.Text = '+';

            % Create iLabel_11
            app.iLabel_11 = uilabel(app.s3Panel_3);
            app.iLabel_11.FontName = 'Times New Roman';
            app.iLabel_11.FontSize = 14;
            app.iLabel_11.FontAngle = 'italic';
            app.iLabel_11.Position = [114 4 11 22];
            app.iLabel_11.Text = 'i';

            % Create s4Panel_3
            app.s4Panel_3 = uipanel(app.Panel_6);
            app.s4Panel_3.ForegroundColor = [0 0 0];
            app.s4Panel_3.TitlePosition = 'centertop';
            app.s4Panel_3.Title = 's4';
            app.s4Panel_3.BackgroundColor = [1 1 1];
            app.s4Panel_3.Position = [572 8 127 48];

            % Create s4_real_3
            app.s4_real_3 = uieditfield(app.s4Panel_3, 'numeric');
            app.s4_real_3.Limits = [-Inf 0];
            app.s4_real_3.HorizontalAlignment = 'center';
            app.s4_real_3.Position = [6 5 41 19];
            app.s4_real_3.Value = -22.6274;

            % Create s4_image_3
            app.s4_image_3 = uieditfield(app.s4Panel_3, 'numeric');
            app.s4_image_3.Limits = [0 Inf];
            app.s4_image_3.HorizontalAlignment = 'center';
            app.s4_image_3.Position = [67 5 41 19];

            % Create Label_34
            app.Label_34 = uilabel(app.s4Panel_3);
            app.Label_34.FontName = 'Times New Roman';
            app.Label_34.FontSize = 14;
            app.Label_34.Position = [54 4 25 22];
            app.Label_34.Text = '-';

            % Create iLabel_12
            app.iLabel_12 = uilabel(app.s4Panel_3);
            app.iLabel_12.FontName = 'Times New Roman';
            app.iLabel_12.FontSize = 14;
            app.iLabel_12.FontAngle = 'italic';
            app.iLabel_12.Position = [114 4 11 22];
            app.iLabel_12.Text = 'i';

            % Create EditField_4Label_34
            app.EditField_4Label_34 = uilabel(app.Panel_6);
            app.EditField_4Label_34.HorizontalAlignment = 'center';
            app.EditField_4Label_34.FontName = 'Times New Roman';
            app.EditField_4Label_34.FontSize = 14;
            app.EditField_4Label_34.FontAngle = 'italic';
            app.EditField_4Label_34.Position = [115 68 28 24];
            app.EditField_4Label_34.Text = 'θ';

            % Create state_observer_theta
            app.state_observer_theta = uieditfield(app.Panel_6, 'numeric');
            app.state_observer_theta.HorizontalAlignment = 'center';
            app.state_observer_theta.Position = [152 68 58 23];

            % Create EditField_4Label_35
            app.EditField_4Label_35 = uilabel(app.Panel_6);
            app.EditField_4Label_35.HorizontalAlignment = 'center';
            app.EditField_4Label_35.FontName = 'Times New Roman';
            app.EditField_4Label_35.FontSize = 14;
            app.EditField_4Label_35.FontAngle = 'italic';
            app.EditField_4Label_35.Position = [229 68 28 24];
            app.EditField_4Label_35.Text = 'dθ';

            % Create state_observer_dtheta
            app.state_observer_dtheta = uieditfield(app.Panel_6, 'numeric');
            app.state_observer_dtheta.HorizontalAlignment = 'center';
            app.state_observer_dtheta.Position = [266 68 58 23];

            % Create EditField_4Label_36
            app.EditField_4Label_36 = uilabel(app.Panel_6);
            app.EditField_4Label_36.HorizontalAlignment = 'center';
            app.EditField_4Label_36.FontName = 'Times New Roman';
            app.EditField_4Label_36.FontSize = 14;
            app.EditField_4Label_36.FontAngle = 'italic';
            app.EditField_4Label_36.Position = [342 68 28 24];
            app.EditField_4Label_36.Text = 'x';

            % Create state_observer_x
            app.state_observer_x = uieditfield(app.Panel_6, 'numeric');
            app.state_observer_x.HorizontalAlignment = 'center';
            app.state_observer_x.Position = [379 68 58 23];
            app.state_observer_x.Value = 0.2;

            % Create EditField_4Label_37
            app.EditField_4Label_37 = uilabel(app.Panel_6);
            app.EditField_4Label_37.HorizontalAlignment = 'center';
            app.EditField_4Label_37.FontName = 'Times New Roman';
            app.EditField_4Label_37.FontSize = 14;
            app.EditField_4Label_37.FontAngle = 'italic';
            app.EditField_4Label_37.Position = [456 68 28 24];
            app.EditField_4Label_37.Text = 'dx';

            % Create state_observer_dx
            app.state_observer_dx = uieditfield(app.Panel_6, 'numeric');
            app.state_observer_dx.HorizontalAlignment = 'center';
            app.state_observer_dx.Position = [493 68 58 23];

            % Create Label_70
            app.Label_70 = uilabel(app.Panel_6);
            app.Label_70.FontSize = 14;
            app.Label_70.FontWeight = 'bold';
            app.Label_70.Position = [583 69 102 22];
            app.Label_70.Text = '单位：弧度 / 米';

            % Create LQRPanel
            app.LQRPanel = uipanel(app.Tab_2);
            app.LQRPanel.ForegroundColor = [0 0.4471 0.7412];
            app.LQRPanel.Title = 'LQR控制器设置';
            app.LQRPanel.BackgroundColor = [1 1 1];
            app.LQRPanel.FontWeight = 'bold';
            app.LQRPanel.FontSize = 15;
            app.LQRPanel.Position = [27 19 717 128];

            % Create LQRLabel_2
            app.LQRLabel_2 = uilabel(app.LQRPanel);
            app.LQRLabel_2.FontSize = 14;
            app.LQRLabel_2.FontWeight = 'bold';
            app.LQRLabel_2.Position = [32 22 62 22];
            app.LQRLabel_2.Text = 'LQR参数';

            % Create EditField_4Label_46
            app.EditField_4Label_46 = uilabel(app.LQRPanel);
            app.EditField_4Label_46.HorizontalAlignment = 'center';
            app.EditField_4Label_46.FontName = 'Times New Roman';
            app.EditField_4Label_46.FontSize = 14;
            app.EditField_4Label_46.FontAngle = 'italic';
            app.EditField_4Label_46.Position = [115 22 28 24];
            app.EditField_4Label_46.Text = 'q1';

            % Create LQR_q1
            app.LQR_q1 = uieditfield(app.LQRPanel, 'numeric');
            app.LQR_q1.Limits = [0 Inf];
            app.LQR_q1.HorizontalAlignment = 'center';
            app.LQR_q1.Position = [152 22 58 23];
            app.LQR_q1.Value = 20;

            % Create EditField_4Label_47
            app.EditField_4Label_47 = uilabel(app.LQRPanel);
            app.EditField_4Label_47.HorizontalAlignment = 'center';
            app.EditField_4Label_47.FontName = 'Times New Roman';
            app.EditField_4Label_47.FontSize = 14;
            app.EditField_4Label_47.FontAngle = 'italic';
            app.EditField_4Label_47.Position = [229 22 28 24];
            app.EditField_4Label_47.Text = 'q2';

            % Create LQR_q2
            app.LQR_q2 = uieditfield(app.LQRPanel, 'numeric');
            app.LQR_q2.Limits = [0 Inf];
            app.LQR_q2.HorizontalAlignment = 'center';
            app.LQR_q2.Position = [266 22 58 23];

            % Create EditField_4Label_48
            app.EditField_4Label_48 = uilabel(app.LQRPanel);
            app.EditField_4Label_48.HorizontalAlignment = 'center';
            app.EditField_4Label_48.FontName = 'Times New Roman';
            app.EditField_4Label_48.FontSize = 14;
            app.EditField_4Label_48.FontAngle = 'italic';
            app.EditField_4Label_48.Position = [342 22 28 24];
            app.EditField_4Label_48.Text = 'q3';

            % Create LQR_q3
            app.LQR_q3 = uieditfield(app.LQRPanel, 'numeric');
            app.LQR_q3.Limits = [0 Inf];
            app.LQR_q3.HorizontalAlignment = 'center';
            app.LQR_q3.Position = [379 22 58 23];
            app.LQR_q3.Value = 20;

            % Create EditField_4Label_49
            app.EditField_4Label_49 = uilabel(app.LQRPanel);
            app.EditField_4Label_49.HorizontalAlignment = 'center';
            app.EditField_4Label_49.FontName = 'Times New Roman';
            app.EditField_4Label_49.FontSize = 14;
            app.EditField_4Label_49.FontAngle = 'italic';
            app.EditField_4Label_49.Position = [456 22 28 24];
            app.EditField_4Label_49.Text = 'q4';

            % Create LQR_q4
            app.LQR_q4 = uieditfield(app.LQRPanel, 'numeric');
            app.LQR_q4.Limits = [0 Inf];
            app.LQR_q4.HorizontalAlignment = 'center';
            app.LQR_q4.Position = [493 22 58 23];

            % Create EditField_4Label_50
            app.EditField_4Label_50 = uilabel(app.LQRPanel);
            app.EditField_4Label_50.HorizontalAlignment = 'center';
            app.EditField_4Label_50.FontName = 'Times New Roman';
            app.EditField_4Label_50.FontSize = 14;
            app.EditField_4Label_50.FontAngle = 'italic';
            app.EditField_4Label_50.Position = [569 22 28 24];
            app.EditField_4Label_50.Text = 'R';

            % Create LQR_r
            app.LQR_r = uieditfield(app.LQRPanel, 'numeric');
            app.LQR_r.Limits = [0 Inf];
            app.LQR_r.HorizontalAlignment = 'center';
            app.LQR_r.Position = [606 22 58 23];
            app.LQR_r.Value = 0.1;

            % Create Label_66
            app.Label_66 = uilabel(app.LQRPanel);
            app.Label_66.FontSize = 14;
            app.Label_66.FontWeight = 'bold';
            app.Label_66.Position = [32 60 61 22];
            app.Label_66.Text = '期望状态';

            % Create EditField_4Label_60
            app.EditField_4Label_60 = uilabel(app.LQRPanel);
            app.EditField_4Label_60.HorizontalAlignment = 'center';
            app.EditField_4Label_60.FontName = 'Times New Roman';
            app.EditField_4Label_60.FontSize = 14;
            app.EditField_4Label_60.FontAngle = 'italic';
            app.EditField_4Label_60.Position = [115 59 28 24];
            app.EditField_4Label_60.Text = 'θ';

            % Create LQR_theta
            app.LQR_theta = uieditfield(app.LQRPanel, 'numeric');
            app.LQR_theta.HorizontalAlignment = 'center';
            app.LQR_theta.Position = [152 59 58 23];

            % Create EditField_4Label_61
            app.EditField_4Label_61 = uilabel(app.LQRPanel);
            app.EditField_4Label_61.HorizontalAlignment = 'center';
            app.EditField_4Label_61.FontName = 'Times New Roman';
            app.EditField_4Label_61.FontSize = 14;
            app.EditField_4Label_61.FontAngle = 'italic';
            app.EditField_4Label_61.Position = [229 59 28 24];
            app.EditField_4Label_61.Text = 'dθ';

            % Create LQR_dtheta
            app.LQR_dtheta = uieditfield(app.LQRPanel, 'numeric');
            app.LQR_dtheta.HorizontalAlignment = 'center';
            app.LQR_dtheta.Position = [266 59 58 23];

            % Create EditField_4Label_62
            app.EditField_4Label_62 = uilabel(app.LQRPanel);
            app.EditField_4Label_62.HorizontalAlignment = 'center';
            app.EditField_4Label_62.FontName = 'Times New Roman';
            app.EditField_4Label_62.FontSize = 14;
            app.EditField_4Label_62.FontAngle = 'italic';
            app.EditField_4Label_62.Position = [342 59 28 24];
            app.EditField_4Label_62.Text = 'x';

            % Create LQR_x
            app.LQR_x = uieditfield(app.LQRPanel, 'numeric');
            app.LQR_x.HorizontalAlignment = 'center';
            app.LQR_x.Position = [379 59 58 23];

            % Create EditField_4Label_63
            app.EditField_4Label_63 = uilabel(app.LQRPanel);
            app.EditField_4Label_63.HorizontalAlignment = 'center';
            app.EditField_4Label_63.FontName = 'Times New Roman';
            app.EditField_4Label_63.FontSize = 14;
            app.EditField_4Label_63.FontAngle = 'italic';
            app.EditField_4Label_63.Position = [456 59 28 24];
            app.EditField_4Label_63.Text = 'dx';

            % Create LQR_dx
            app.LQR_dx = uieditfield(app.LQRPanel, 'numeric');
            app.LQR_dx.HorizontalAlignment = 'center';
            app.LQR_dx.Position = [493 59 58 23];

            % Create Label_71
            app.Label_71 = uilabel(app.LQRPanel);
            app.Label_71.FontSize = 14;
            app.Label_71.FontWeight = 'bold';
            app.Label_71.Position = [583 60 102 22];
            app.Label_71.Text = '单位：弧度 / 米';

            % Create Tab_4
            app.Tab_4 = uitab(app.TabGroup);
            app.Tab_4.Title = '控制器计算参数';
            app.Tab_4.BackgroundColor = [1 1 1];

            % Create Panel_9
            app.Panel_9 = uipanel(app.Tab_4);
            app.Panel_9.ForegroundColor = [0.851 0.3255 0.098];
            app.Panel_9.Title = '状态反馈控制器参数';
            app.Panel_9.BackgroundColor = [1 1 1];
            app.Panel_9.FontWeight = 'bold';
            app.Panel_9.FontSize = 15;
            app.Panel_9.Position = [27 454 717 128];

            % Create EditField_4Label_15
            app.EditField_4Label_15 = uilabel(app.Panel_9);
            app.EditField_4Label_15.HorizontalAlignment = 'center';
            app.EditField_4Label_15.FontName = 'Times New Roman';
            app.EditField_4Label_15.FontSize = 14;
            app.EditField_4Label_15.FontAngle = 'italic';
            app.EditField_4Label_15.Position = [115 63 28 24];
            app.EditField_4Label_15.Text = 'θ';

            % Create state_feedback_theta_2
            app.state_feedback_theta_2 = uieditfield(app.Panel_9, 'numeric');
            app.state_feedback_theta_2.Editable = 'off';
            app.state_feedback_theta_2.HorizontalAlignment = 'center';
            app.state_feedback_theta_2.Position = [152 63 58 23];

            % Create EditField_4Label_16
            app.EditField_4Label_16 = uilabel(app.Panel_9);
            app.EditField_4Label_16.HorizontalAlignment = 'center';
            app.EditField_4Label_16.FontName = 'Times New Roman';
            app.EditField_4Label_16.FontSize = 14;
            app.EditField_4Label_16.FontAngle = 'italic';
            app.EditField_4Label_16.Position = [229 63 28 24];
            app.EditField_4Label_16.Text = 'dθ';

            % Create state_feedback_dtheta_2
            app.state_feedback_dtheta_2 = uieditfield(app.Panel_9, 'numeric');
            app.state_feedback_dtheta_2.Editable = 'off';
            app.state_feedback_dtheta_2.HorizontalAlignment = 'center';
            app.state_feedback_dtheta_2.Position = [266 63 58 23];

            % Create EditField_4Label_17
            app.EditField_4Label_17 = uilabel(app.Panel_9);
            app.EditField_4Label_17.HorizontalAlignment = 'center';
            app.EditField_4Label_17.FontName = 'Times New Roman';
            app.EditField_4Label_17.FontSize = 14;
            app.EditField_4Label_17.FontAngle = 'italic';
            app.EditField_4Label_17.Position = [342 63 28 24];
            app.EditField_4Label_17.Text = 'x';

            % Create state_feedback_x_2
            app.state_feedback_x_2 = uieditfield(app.Panel_9, 'numeric');
            app.state_feedback_x_2.Editable = 'off';
            app.state_feedback_x_2.HorizontalAlignment = 'center';
            app.state_feedback_x_2.Position = [379 63 58 23];

            % Create EditField_4Label_18
            app.EditField_4Label_18 = uilabel(app.Panel_9);
            app.EditField_4Label_18.HorizontalAlignment = 'center';
            app.EditField_4Label_18.FontName = 'Times New Roman';
            app.EditField_4Label_18.FontSize = 14;
            app.EditField_4Label_18.FontAngle = 'italic';
            app.EditField_4Label_18.Position = [456 63 28 24];
            app.EditField_4Label_18.Text = 'dx';

            % Create state_feedback_dx_2
            app.state_feedback_dx_2 = uieditfield(app.Panel_9, 'numeric');
            app.state_feedback_dx_2.Editable = 'off';
            app.state_feedback_dx_2.HorizontalAlignment = 'center';
            app.state_feedback_dx_2.Position = [493 63 58 23];

            % Create Label_19
            app.Label_19 = uilabel(app.Panel_9);
            app.Label_19.FontSize = 14;
            app.Label_19.FontWeight = 'bold';
            app.Label_19.Position = [32 64 61 22];
            app.Label_19.Text = '期望状态';

            % Create Label_20
            app.Label_20 = uilabel(app.Panel_9);
            app.Label_20.FontSize = 14;
            app.Label_20.FontWeight = 'bold';
            app.Label_20.Position = [32 20 61 22];
            app.Label_20.Text = '反馈增益';

            % Create EditField_4Label_19
            app.EditField_4Label_19 = uilabel(app.Panel_9);
            app.EditField_4Label_19.HorizontalAlignment = 'center';
            app.EditField_4Label_19.FontName = 'Times New Roman';
            app.EditField_4Label_19.FontSize = 14;
            app.EditField_4Label_19.FontAngle = 'italic';
            app.EditField_4Label_19.Position = [457 19 28 24];
            app.EditField_4Label_19.Text = 'k4';

            % Create state_gain_4
            app.state_gain_4 = uieditfield(app.Panel_9, 'numeric');
            app.state_gain_4.Editable = 'off';
            app.state_gain_4.HorizontalAlignment = 'center';
            app.state_gain_4.Position = [494 19 58 23];

            % Create EditField_4Label_20
            app.EditField_4Label_20 = uilabel(app.Panel_9);
            app.EditField_4Label_20.HorizontalAlignment = 'center';
            app.EditField_4Label_20.FontName = 'Times New Roman';
            app.EditField_4Label_20.FontSize = 14;
            app.EditField_4Label_20.FontAngle = 'italic';
            app.EditField_4Label_20.Position = [343 19 28 24];
            app.EditField_4Label_20.Text = 'k3';

            % Create state_gain_3
            app.state_gain_3 = uieditfield(app.Panel_9, 'numeric');
            app.state_gain_3.Editable = 'off';
            app.state_gain_3.HorizontalAlignment = 'center';
            app.state_gain_3.Position = [380 19 58 23];

            % Create EditField_4Label_21
            app.EditField_4Label_21 = uilabel(app.Panel_9);
            app.EditField_4Label_21.HorizontalAlignment = 'center';
            app.EditField_4Label_21.FontName = 'Times New Roman';
            app.EditField_4Label_21.FontSize = 14;
            app.EditField_4Label_21.FontAngle = 'italic';
            app.EditField_4Label_21.Position = [230 19 28 24];
            app.EditField_4Label_21.Text = 'k2';

            % Create state_gain_2
            app.state_gain_2 = uieditfield(app.Panel_9, 'numeric');
            app.state_gain_2.Editable = 'off';
            app.state_gain_2.HorizontalAlignment = 'center';
            app.state_gain_2.Position = [267 19 58 23];

            % Create EditField_4Label_22
            app.EditField_4Label_22 = uilabel(app.Panel_9);
            app.EditField_4Label_22.HorizontalAlignment = 'center';
            app.EditField_4Label_22.FontName = 'Times New Roman';
            app.EditField_4Label_22.FontSize = 14;
            app.EditField_4Label_22.FontAngle = 'italic';
            app.EditField_4Label_22.Position = [116 19 28 24];
            app.EditField_4Label_22.Text = 'k1';

            % Create state_gain_1
            app.state_gain_1 = uieditfield(app.Panel_9, 'numeric');
            app.state_gain_1.Editable = 'off';
            app.state_gain_1.HorizontalAlignment = 'center';
            app.state_gain_1.Position = [153 19 58 23];

            % Create Label_72
            app.Label_72 = uilabel(app.Panel_9);
            app.Label_72.FontSize = 14;
            app.Label_72.FontWeight = 'bold';
            app.Label_72.Position = [588 63 102 22];
            app.Label_72.Text = '单位：弧度 / 米';

            % Create Panel_10
            app.Panel_10 = uipanel(app.Tab_4);
            app.Panel_10.ForegroundColor = [0.851 0.3255 0.098];
            app.Panel_10.Title = '输出反馈控制器参数';
            app.Panel_10.BackgroundColor = [1 1 1];
            app.Panel_10.FontWeight = 'bold';
            app.Panel_10.FontSize = 15;
            app.Panel_10.Position = [27 311 717 128];

            % Create EditField_4Label_26
            app.EditField_4Label_26 = uilabel(app.Panel_10);
            app.EditField_4Label_26.HorizontalAlignment = 'center';
            app.EditField_4Label_26.FontName = 'Times New Roman';
            app.EditField_4Label_26.FontSize = 14;
            app.EditField_4Label_26.FontAngle = 'italic';
            app.EditField_4Label_26.Position = [115 63 28 24];
            app.EditField_4Label_26.Text = 'θ';

            % Create out_feedback_theta_2
            app.out_feedback_theta_2 = uieditfield(app.Panel_10, 'numeric');
            app.out_feedback_theta_2.Editable = 'off';
            app.out_feedback_theta_2.HorizontalAlignment = 'center';
            app.out_feedback_theta_2.Position = [152 63 58 23];

            % Create EditField_4Label_27
            app.EditField_4Label_27 = uilabel(app.Panel_10);
            app.EditField_4Label_27.HorizontalAlignment = 'center';
            app.EditField_4Label_27.FontName = 'Times New Roman';
            app.EditField_4Label_27.FontSize = 14;
            app.EditField_4Label_27.FontAngle = 'italic';
            app.EditField_4Label_27.Position = [229 63 28 24];
            app.EditField_4Label_27.Text = 'x';

            % Create out_feedback_x_2
            app.out_feedback_x_2 = uieditfield(app.Panel_10, 'numeric');
            app.out_feedback_x_2.Editable = 'off';
            app.out_feedback_x_2.HorizontalAlignment = 'center';
            app.out_feedback_x_2.Position = [266 63 58 23];

            % Create Label_27
            app.Label_27 = uilabel(app.Panel_10);
            app.Label_27.FontSize = 14;
            app.Label_27.FontWeight = 'bold';
            app.Label_27.Position = [32 65 61 22];
            app.Label_27.Text = '期望输出';

            % Create Label_28
            app.Label_28 = uilabel(app.Panel_10);
            app.Label_28.FontSize = 14;
            app.Label_28.FontWeight = 'bold';
            app.Label_28.Position = [32 20 61 22];
            app.Label_28.Text = '反馈增益';

            % Create EditField_4Label_32
            app.EditField_4Label_32 = uilabel(app.Panel_10);
            app.EditField_4Label_32.HorizontalAlignment = 'center';
            app.EditField_4Label_32.FontName = 'Times New Roman';
            app.EditField_4Label_32.FontSize = 14;
            app.EditField_4Label_32.FontAngle = 'italic';
            app.EditField_4Label_32.Position = [230 19 28 24];
            app.EditField_4Label_32.Text = 'k2';

            % Create out_gain_2
            app.out_gain_2 = uieditfield(app.Panel_10, 'numeric');
            app.out_gain_2.Editable = 'off';
            app.out_gain_2.HorizontalAlignment = 'center';
            app.out_gain_2.Position = [267 19 58 23];

            % Create EditField_4Label_33
            app.EditField_4Label_33 = uilabel(app.Panel_10);
            app.EditField_4Label_33.HorizontalAlignment = 'center';
            app.EditField_4Label_33.FontName = 'Times New Roman';
            app.EditField_4Label_33.FontSize = 14;
            app.EditField_4Label_33.FontAngle = 'italic';
            app.EditField_4Label_33.Position = [116 19 28 24];
            app.EditField_4Label_33.Text = 'k1';

            % Create out_gain_1
            app.out_gain_1 = uieditfield(app.Panel_10, 'numeric');
            app.out_gain_1.Editable = 'off';
            app.out_gain_1.HorizontalAlignment = 'center';
            app.out_gain_1.Position = [153 19 58 23];

            % Create Label_73
            app.Label_73 = uilabel(app.Panel_10);
            app.Label_73.FontSize = 14;
            app.Label_73.FontWeight = 'bold';
            app.Label_73.Position = [352 63 102 22];
            app.Label_73.Text = '单位：弧度 / 米';

            % Create Panel_11
            app.Panel_11 = uipanel(app.Tab_4);
            app.Panel_11.ForegroundColor = [0.851 0.3255 0.098];
            app.Panel_11.Title = '状态观测器参数';
            app.Panel_11.BackgroundColor = [1 1 1];
            app.Panel_11.FontWeight = 'bold';
            app.Panel_11.FontSize = 15;
            app.Panel_11.Position = [27 165 717 128];

            % Create EditField_4Label_38
            app.EditField_4Label_38 = uilabel(app.Panel_11);
            app.EditField_4Label_38.HorizontalAlignment = 'center';
            app.EditField_4Label_38.FontName = 'Times New Roman';
            app.EditField_4Label_38.FontSize = 14;
            app.EditField_4Label_38.FontAngle = 'italic';
            app.EditField_4Label_38.Position = [116 69 28 24];
            app.EditField_4Label_38.Text = 'θ';

            % Create state_observer_theta_2
            app.state_observer_theta_2 = uieditfield(app.Panel_11, 'numeric');
            app.state_observer_theta_2.Editable = 'off';
            app.state_observer_theta_2.HorizontalAlignment = 'center';
            app.state_observer_theta_2.Position = [153 69 58 23];

            % Create EditField_4Label_39
            app.EditField_4Label_39 = uilabel(app.Panel_11);
            app.EditField_4Label_39.HorizontalAlignment = 'center';
            app.EditField_4Label_39.FontName = 'Times New Roman';
            app.EditField_4Label_39.FontSize = 14;
            app.EditField_4Label_39.FontAngle = 'italic';
            app.EditField_4Label_39.Position = [230 69 28 24];
            app.EditField_4Label_39.Text = 'dθ';

            % Create state_observer_dtheta_2
            app.state_observer_dtheta_2 = uieditfield(app.Panel_11, 'numeric');
            app.state_observer_dtheta_2.Editable = 'off';
            app.state_observer_dtheta_2.HorizontalAlignment = 'center';
            app.state_observer_dtheta_2.Position = [267 69 58 23];

            % Create EditField_4Label_40
            app.EditField_4Label_40 = uilabel(app.Panel_11);
            app.EditField_4Label_40.HorizontalAlignment = 'center';
            app.EditField_4Label_40.FontName = 'Times New Roman';
            app.EditField_4Label_40.FontSize = 14;
            app.EditField_4Label_40.FontAngle = 'italic';
            app.EditField_4Label_40.Position = [343 69 28 24];
            app.EditField_4Label_40.Text = 'x';

            % Create state_observer_x_2
            app.state_observer_x_2 = uieditfield(app.Panel_11, 'numeric');
            app.state_observer_x_2.Editable = 'off';
            app.state_observer_x_2.HorizontalAlignment = 'center';
            app.state_observer_x_2.Position = [380 69 58 23];

            % Create EditField_4Label_41
            app.EditField_4Label_41 = uilabel(app.Panel_11);
            app.EditField_4Label_41.HorizontalAlignment = 'center';
            app.EditField_4Label_41.FontName = 'Times New Roman';
            app.EditField_4Label_41.FontSize = 14;
            app.EditField_4Label_41.FontAngle = 'italic';
            app.EditField_4Label_41.Position = [457 69 28 24];
            app.EditField_4Label_41.Text = 'dx';

            % Create state_observer_dx_2
            app.state_observer_dx_2 = uieditfield(app.Panel_11, 'numeric');
            app.state_observer_dx_2.Editable = 'off';
            app.state_observer_dx_2.HorizontalAlignment = 'center';
            app.state_observer_dx_2.Position = [494 69 58 23];

            % Create Label_35
            app.Label_35 = uilabel(app.Panel_11);
            app.Label_35.FontSize = 14;
            app.Label_35.FontWeight = 'bold';
            app.Label_35.Position = [32 70 61 22];
            app.Label_35.Text = '初始状态';

            % Create Label_36
            app.Label_36 = uilabel(app.Panel_11);
            app.Label_36.FontSize = 14;
            app.Label_36.FontWeight = 'bold';
            app.Label_36.Position = [32 21 61 22];
            app.Label_36.Text = '反馈增益';

            % Create EditField_4Label_42
            app.EditField_4Label_42 = uilabel(app.Panel_11);
            app.EditField_4Label_42.HorizontalAlignment = 'center';
            app.EditField_4Label_42.FontName = 'Times New Roman';
            app.EditField_4Label_42.FontSize = 14;
            app.EditField_4Label_42.FontAngle = 'italic';
            app.EditField_4Label_42.Position = [457 38 28 24];
            app.EditField_4Label_42.Text = 'l41';

            % Create observer_gain_4
            app.observer_gain_4 = uieditfield(app.Panel_11, 'numeric');
            app.observer_gain_4.Editable = 'off';
            app.observer_gain_4.HorizontalAlignment = 'center';
            app.observer_gain_4.Position = [494 38 58 23];

            % Create EditField_4Label_43
            app.EditField_4Label_43 = uilabel(app.Panel_11);
            app.EditField_4Label_43.HorizontalAlignment = 'center';
            app.EditField_4Label_43.FontName = 'Times New Roman';
            app.EditField_4Label_43.FontSize = 14;
            app.EditField_4Label_43.FontAngle = 'italic';
            app.EditField_4Label_43.Position = [343 38 28 24];
            app.EditField_4Label_43.Text = 'l31';

            % Create observer_gain_3
            app.observer_gain_3 = uieditfield(app.Panel_11, 'numeric');
            app.observer_gain_3.Editable = 'off';
            app.observer_gain_3.HorizontalAlignment = 'center';
            app.observer_gain_3.Position = [380 38 58 23];

            % Create EditField_4Label_44
            app.EditField_4Label_44 = uilabel(app.Panel_11);
            app.EditField_4Label_44.HorizontalAlignment = 'center';
            app.EditField_4Label_44.FontName = 'Times New Roman';
            app.EditField_4Label_44.FontSize = 14;
            app.EditField_4Label_44.FontAngle = 'italic';
            app.EditField_4Label_44.Position = [230 38 28 24];
            app.EditField_4Label_44.Text = 'l21';

            % Create observer_gain_2
            app.observer_gain_2 = uieditfield(app.Panel_11, 'numeric');
            app.observer_gain_2.Editable = 'off';
            app.observer_gain_2.HorizontalAlignment = 'center';
            app.observer_gain_2.Position = [267 38 58 23];

            % Create EditField_4Label_45
            app.EditField_4Label_45 = uilabel(app.Panel_11);
            app.EditField_4Label_45.HorizontalAlignment = 'center';
            app.EditField_4Label_45.FontName = 'Times New Roman';
            app.EditField_4Label_45.FontSize = 14;
            app.EditField_4Label_45.FontAngle = 'italic';
            app.EditField_4Label_45.Position = [116 38 28 24];
            app.EditField_4Label_45.Text = 'l11';

            % Create observer_gain_1
            app.observer_gain_1 = uieditfield(app.Panel_11, 'numeric');
            app.observer_gain_1.Editable = 'off';
            app.observer_gain_1.HorizontalAlignment = 'center';
            app.observer_gain_1.Position = [153 38 58 23];

            % Create Label_74
            app.Label_74 = uilabel(app.Panel_11);
            app.Label_74.FontSize = 14;
            app.Label_74.FontWeight = 'bold';
            app.Label_74.Position = [583 70 102 22];
            app.Label_74.Text = '单位：弧度 / 米';

            % Create EditField_4Label_68
            app.EditField_4Label_68 = uilabel(app.Panel_11);
            app.EditField_4Label_68.HorizontalAlignment = 'center';
            app.EditField_4Label_68.FontName = 'Times New Roman';
            app.EditField_4Label_68.FontSize = 14;
            app.EditField_4Label_68.FontAngle = 'italic';
            app.EditField_4Label_68.Position = [457 7 28 24];
            app.EditField_4Label_68.Text = 'l42';

            % Create observer_gain_42
            app.observer_gain_42 = uieditfield(app.Panel_11, 'numeric');
            app.observer_gain_42.Editable = 'off';
            app.observer_gain_42.HorizontalAlignment = 'center';
            app.observer_gain_42.Position = [494 7 58 23];

            % Create EditField_4Label_69
            app.EditField_4Label_69 = uilabel(app.Panel_11);
            app.EditField_4Label_69.HorizontalAlignment = 'center';
            app.EditField_4Label_69.FontName = 'Times New Roman';
            app.EditField_4Label_69.FontSize = 14;
            app.EditField_4Label_69.FontAngle = 'italic';
            app.EditField_4Label_69.Position = [343 7 28 24];
            app.EditField_4Label_69.Text = 'l32';

            % Create observer_gain_32
            app.observer_gain_32 = uieditfield(app.Panel_11, 'numeric');
            app.observer_gain_32.Editable = 'off';
            app.observer_gain_32.HorizontalAlignment = 'center';
            app.observer_gain_32.Position = [380 7 58 23];

            % Create EditField_4Label_70
            app.EditField_4Label_70 = uilabel(app.Panel_11);
            app.EditField_4Label_70.HorizontalAlignment = 'center';
            app.EditField_4Label_70.FontName = 'Times New Roman';
            app.EditField_4Label_70.FontSize = 14;
            app.EditField_4Label_70.FontAngle = 'italic';
            app.EditField_4Label_70.Position = [230 7 28 24];
            app.EditField_4Label_70.Text = 'l22';

            % Create observer_gain_22
            app.observer_gain_22 = uieditfield(app.Panel_11, 'numeric');
            app.observer_gain_22.Editable = 'off';
            app.observer_gain_22.HorizontalAlignment = 'center';
            app.observer_gain_22.Position = [267 7 58 23];

            % Create EditField_4Label_71
            app.EditField_4Label_71 = uilabel(app.Panel_11);
            app.EditField_4Label_71.HorizontalAlignment = 'center';
            app.EditField_4Label_71.FontName = 'Times New Roman';
            app.EditField_4Label_71.FontSize = 14;
            app.EditField_4Label_71.FontAngle = 'italic';
            app.EditField_4Label_71.Position = [116 7 28 24];
            app.EditField_4Label_71.Text = 'l12';

            % Create observer_gain_12
            app.observer_gain_12 = uieditfield(app.Panel_11, 'numeric');
            app.observer_gain_12.Editable = 'off';
            app.observer_gain_12.HorizontalAlignment = 'center';
            app.observer_gain_12.Position = [153 7 58 23];

            % Create LQRPanel_2
            app.LQRPanel_2 = uipanel(app.Tab_4);
            app.LQRPanel_2.ForegroundColor = [0.851 0.3255 0.098];
            app.LQRPanel_2.Title = 'LQR控制器参数';
            app.LQRPanel_2.BackgroundColor = [1 1 1];
            app.LQRPanel_2.FontWeight = 'bold';
            app.LQRPanel_2.FontSize = 15;
            app.LQRPanel_2.Position = [27 19 717 128];

            % Create Label_67
            app.Label_67 = uilabel(app.LQRPanel_2);
            app.Label_67.FontSize = 14;
            app.Label_67.FontWeight = 'bold';
            app.Label_67.Position = [31 59 61 22];
            app.Label_67.Text = '期望状态';

            % Create Label_45
            app.Label_45 = uilabel(app.LQRPanel_2);
            app.Label_45.FontSize = 14;
            app.Label_45.FontWeight = 'bold';
            app.Label_45.Position = [31 21 61 22];
            app.Label_45.Text = '反馈增益';

            % Create EditField_4Label_56
            app.EditField_4Label_56 = uilabel(app.LQRPanel_2);
            app.EditField_4Label_56.HorizontalAlignment = 'center';
            app.EditField_4Label_56.FontName = 'Times New Roman';
            app.EditField_4Label_56.FontSize = 14;
            app.EditField_4Label_56.FontAngle = 'italic';
            app.EditField_4Label_56.Position = [456 20 28 24];
            app.EditField_4Label_56.Text = 'k4';

            % Create LQR_gain_4
            app.LQR_gain_4 = uieditfield(app.LQRPanel_2, 'numeric');
            app.LQR_gain_4.Editable = 'off';
            app.LQR_gain_4.HorizontalAlignment = 'center';
            app.LQR_gain_4.Position = [493 20 58 23];

            % Create EditField_4Label_57
            app.EditField_4Label_57 = uilabel(app.LQRPanel_2);
            app.EditField_4Label_57.HorizontalAlignment = 'center';
            app.EditField_4Label_57.FontName = 'Times New Roman';
            app.EditField_4Label_57.FontSize = 14;
            app.EditField_4Label_57.FontAngle = 'italic';
            app.EditField_4Label_57.Position = [342 20 28 24];
            app.EditField_4Label_57.Text = 'k3';

            % Create LQR_gain_3
            app.LQR_gain_3 = uieditfield(app.LQRPanel_2, 'numeric');
            app.LQR_gain_3.Editable = 'off';
            app.LQR_gain_3.HorizontalAlignment = 'center';
            app.LQR_gain_3.Position = [379 20 58 23];

            % Create EditField_4Label_58
            app.EditField_4Label_58 = uilabel(app.LQRPanel_2);
            app.EditField_4Label_58.HorizontalAlignment = 'center';
            app.EditField_4Label_58.FontName = 'Times New Roman';
            app.EditField_4Label_58.FontSize = 14;
            app.EditField_4Label_58.FontAngle = 'italic';
            app.EditField_4Label_58.Position = [229 20 28 24];
            app.EditField_4Label_58.Text = 'k2';

            % Create LQR_gain_2
            app.LQR_gain_2 = uieditfield(app.LQRPanel_2, 'numeric');
            app.LQR_gain_2.Editable = 'off';
            app.LQR_gain_2.HorizontalAlignment = 'center';
            app.LQR_gain_2.Position = [266 20 58 23];

            % Create EditField_4Label_59
            app.EditField_4Label_59 = uilabel(app.LQRPanel_2);
            app.EditField_4Label_59.HorizontalAlignment = 'center';
            app.EditField_4Label_59.FontName = 'Times New Roman';
            app.EditField_4Label_59.FontSize = 14;
            app.EditField_4Label_59.FontAngle = 'italic';
            app.EditField_4Label_59.Position = [115 20 28 24];
            app.EditField_4Label_59.Text = 'k1';

            % Create LQR_gain_1
            app.LQR_gain_1 = uieditfield(app.LQRPanel_2, 'numeric');
            app.LQR_gain_1.Editable = 'off';
            app.LQR_gain_1.HorizontalAlignment = 'center';
            app.LQR_gain_1.Position = [152 20 58 23];

            % Create EditField_4Label_64
            app.EditField_4Label_64 = uilabel(app.LQRPanel_2);
            app.EditField_4Label_64.HorizontalAlignment = 'center';
            app.EditField_4Label_64.FontName = 'Times New Roman';
            app.EditField_4Label_64.FontSize = 14;
            app.EditField_4Label_64.FontAngle = 'italic';
            app.EditField_4Label_64.Position = [115 58 28 24];
            app.EditField_4Label_64.Text = 'θ';

            % Create LQR_theta_2
            app.LQR_theta_2 = uieditfield(app.LQRPanel_2, 'numeric');
            app.LQR_theta_2.Editable = 'off';
            app.LQR_theta_2.HorizontalAlignment = 'center';
            app.LQR_theta_2.Position = [152 58 58 23];

            % Create EditField_4Label_65
            app.EditField_4Label_65 = uilabel(app.LQRPanel_2);
            app.EditField_4Label_65.HorizontalAlignment = 'center';
            app.EditField_4Label_65.FontName = 'Times New Roman';
            app.EditField_4Label_65.FontSize = 14;
            app.EditField_4Label_65.FontAngle = 'italic';
            app.EditField_4Label_65.Position = [229 58 28 24];
            app.EditField_4Label_65.Text = 'dθ';

            % Create LQR_dtheta_2
            app.LQR_dtheta_2 = uieditfield(app.LQRPanel_2, 'numeric');
            app.LQR_dtheta_2.Editable = 'off';
            app.LQR_dtheta_2.HorizontalAlignment = 'center';
            app.LQR_dtheta_2.Position = [266 58 58 23];

            % Create EditField_4Label_66
            app.EditField_4Label_66 = uilabel(app.LQRPanel_2);
            app.EditField_4Label_66.HorizontalAlignment = 'center';
            app.EditField_4Label_66.FontName = 'Times New Roman';
            app.EditField_4Label_66.FontSize = 14;
            app.EditField_4Label_66.FontAngle = 'italic';
            app.EditField_4Label_66.Position = [342 58 28 24];
            app.EditField_4Label_66.Text = 'x';

            % Create LQR_x_2
            app.LQR_x_2 = uieditfield(app.LQRPanel_2, 'numeric');
            app.LQR_x_2.Editable = 'off';
            app.LQR_x_2.HorizontalAlignment = 'center';
            app.LQR_x_2.Position = [379 58 58 23];

            % Create EditField_4Label_67
            app.EditField_4Label_67 = uilabel(app.LQRPanel_2);
            app.EditField_4Label_67.HorizontalAlignment = 'center';
            app.EditField_4Label_67.FontName = 'Times New Roman';
            app.EditField_4Label_67.FontSize = 14;
            app.EditField_4Label_67.FontAngle = 'italic';
            app.EditField_4Label_67.Position = [456 58 28 24];
            app.EditField_4Label_67.Text = 'dx';

            % Create LQR_dx_2
            app.LQR_dx_2 = uieditfield(app.LQRPanel_2, 'numeric');
            app.LQR_dx_2.Editable = 'off';
            app.LQR_dx_2.HorizontalAlignment = 'center';
            app.LQR_dx_2.Position = [493 58 58 23];

            % Create Label_75
            app.Label_75 = uilabel(app.LQRPanel_2);
            app.Label_75.FontSize = 14;
            app.Label_75.FontWeight = 'bold';
            app.Label_75.Position = [583 60 102 22];
            app.Label_75.Text = '单位：弧度 / 米';

            % Create Tab_3
            app.Tab_3 = uitab(app.TabGroup);
            app.Tab_3.Title = '系统性能';
            app.Tab_3.BackgroundColor = [1 1 1];

            % Create Panel_7
            app.Panel_7 = uipanel(app.Tab_3);
            app.Panel_7.ForegroundColor = [0 0.4471 0.7412];
            app.Panel_7.Title = '开环系统性能';
            app.Panel_7.BackgroundColor = [1 1 1];
            app.Panel_7.FontWeight = 'bold';
            app.Panel_7.FontSize = 14;
            app.Panel_7.Position = [20 96 357 491];

            % Create open_system_fig
            app.open_system_fig = uiaxes(app.Panel_7);
            app.open_system_fig.FontName = 'Times New Roman';
            app.open_system_fig.YGrid = 'on';
            app.open_system_fig.FontSize = 12;
            app.open_system_fig.Tag = 'fig1';
            app.open_system_fig.Position = [0 272 353 160];

            % Create Label_46
            app.Label_46 = uilabel(app.Panel_7);
            app.Label_46.HorizontalAlignment = 'center';
            app.Label_46.FontSize = 14;
            app.Label_46.FontWeight = 'bold';
            app.Label_46.Position = [117 439 117 22];
            app.Label_46.Text = '开环系统极点分布';

            % Create open_s2_real
            app.open_s2_real = uieditfield(app.Panel_7, 'numeric');
            %app.open_s2_real.AllowEmpty = 'on';
            app.open_s2_real.Editable = 'off';
            app.open_s2_real.HorizontalAlignment = 'center';
            app.open_s2_real.Position = [171 135 55 22];
            app.open_s2_real.Value = 0;

            % Create open_s2_image
            app.open_s2_image = uieditfield(app.Panel_7, 'numeric');
            %app.open_s2_image.AllowEmpty = 'on';
            app.open_s2_image.Editable = 'off';
            app.open_s2_image.HorizontalAlignment = 'center';
            app.open_s2_image.Position = [246 135 55 22];
            app.open_s2_image.Value = 0;

            % Create Label_47
            app.Label_47 = uilabel(app.Panel_7);
            app.Label_47.FontName = 'Times New Roman';
            app.Label_47.FontSize = 14;
            app.Label_47.Position = [233 135 25 22];
            app.Label_47.Text = '-';

            % Create iLabel_13
            app.iLabel_13 = uilabel(app.Panel_7);
            app.iLabel_13.FontName = 'Times New Roman';
            app.iLabel_13.FontSize = 14;
            app.iLabel_13.FontAngle = 'italic';
            app.iLabel_13.Position = [306 135 11 22];
            app.iLabel_13.Text = 'i';

            % Create open_s1_real
            app.open_s1_real = uieditfield(app.Panel_7, 'numeric');
            %app.open_s1_real.AllowEmpty = 'on';
            app.open_s1_real.Editable = 'off';
            app.open_s1_real.HorizontalAlignment = 'center';
            app.open_s1_real.Position = [171 189 55 22];
            app.open_s1_real.Value = 0;

            % Create open_s1_image
            app.open_s1_image = uieditfield(app.Panel_7, 'numeric');
            %app.open_s1_image.AllowEmpty = 'on';
            app.open_s1_image.Editable = 'off';
            app.open_s1_image.HorizontalAlignment = 'center';
            app.open_s1_image.Position = [246 189 55 22];
            app.open_s1_image.Value = 0;

            % Create Label_48
            app.Label_48 = uilabel(app.Panel_7);
            app.Label_48.FontName = 'Times New Roman';
            app.Label_48.FontSize = 14;
            app.Label_48.Position = [232 188 10 22];
            app.Label_48.Text = '+';

            % Create iLabel_14
            app.iLabel_14 = uilabel(app.Panel_7);
            app.iLabel_14.FontName = 'Times New Roman';
            app.iLabel_14.FontSize = 14;
            app.iLabel_14.FontAngle = 'italic';
            app.iLabel_14.Position = [306 188 11 22];
            app.iLabel_14.Text = 'i';

            % Create open_s3_real
            app.open_s3_real = uieditfield(app.Panel_7, 'numeric');
            %app.open_s3_real.AllowEmpty = 'on';
            app.open_s3_real.Editable = 'off';
            app.open_s3_real.HorizontalAlignment = 'center';
            app.open_s3_real.Position = [171 82 55 22];
            app.open_s3_real.Value = 0;

            % Create open_s3_image
            app.open_s3_image = uieditfield(app.Panel_7, 'numeric');
            %app.open_s3_image.AllowEmpty = 'on';
            app.open_s3_image.Editable = 'off';
            app.open_s3_image.HorizontalAlignment = 'center';
            app.open_s3_image.Position = [246 82 55 22];
            app.open_s3_image.Value = 0;

            % Create Label_49
            app.Label_49 = uilabel(app.Panel_7);
            app.Label_49.FontName = 'Times New Roman';
            app.Label_49.FontSize = 14;
            app.Label_49.Position = [232 84 10 22];
            app.Label_49.Text = '+';

            % Create iLabel_15
            app.iLabel_15 = uilabel(app.Panel_7);
            app.iLabel_15.FontName = 'Times New Roman';
            app.iLabel_15.FontSize = 14;
            app.iLabel_15.FontAngle = 'italic';
            app.iLabel_15.Position = [306 84 15 22];
            app.iLabel_15.Text = 'i';

            % Create open_s4_real
            app.open_s4_real = uieditfield(app.Panel_7, 'numeric');
            %app.open_s4_real.AllowEmpty = 'on';
            app.open_s4_real.Editable = 'off';
            app.open_s4_real.HorizontalAlignment = 'center';
            app.open_s4_real.Position = [171 28 55 22];
            app.open_s4_real.Value = 0;

            % Create open_s4_image
            app.open_s4_image = uieditfield(app.Panel_7, 'numeric');
            %app.open_s4_image.AllowEmpty = 'on';
            app.open_s4_image.Editable = 'off';
            app.open_s4_image.HorizontalAlignment = 'center';
            app.open_s4_image.Position = [246 28 55 22];
            app.open_s4_image.Value = 0;

            % Create Label_50
            app.Label_50 = uilabel(app.Panel_7);
            app.Label_50.FontName = 'Times New Roman';
            app.Label_50.FontSize = 14;
            app.Label_50.Position = [233 30 25 22];
            app.Label_50.Text = '-';

            % Create iLabel_16
            app.iLabel_16 = uilabel(app.Panel_7);
            app.iLabel_16.FontName = 'Times New Roman';
            app.iLabel_16.FontSize = 14;
            app.iLabel_16.FontAngle = 'italic';
            app.iLabel_16.Position = [306 30 15 22];
            app.iLabel_16.Text = 'i';

            % Create Label_51
            app.Label_51 = uilabel(app.Panel_7);
            app.Label_51.HorizontalAlignment = 'center';
            app.Label_51.FontSize = 14;
            app.Label_51.FontWeight = 'bold';
            app.Label_51.Position = [118 232 103 22];
            app.Label_51.Text = '开环系统极点值';

            % Create s1Label
            app.s1Label = uilabel(app.Panel_7);
            app.s1Label.HorizontalAlignment = 'center';
            app.s1Label.FontSize = 14;
            app.s1Label.FontWeight = 'bold';
            app.s1Label.Position = [62 188 25 22];
            app.s1Label.Text = 's1';

            % Create s2Label
            app.s2Label = uilabel(app.Panel_7);
            app.s2Label.HorizontalAlignment = 'center';
            app.s2Label.FontSize = 14;
            app.s2Label.FontWeight = 'bold';
            app.s2Label.Position = [62 135 25 22];
            app.s2Label.Text = 's2';

            % Create s3Label
            app.s3Label = uilabel(app.Panel_7);
            app.s3Label.HorizontalAlignment = 'center';
            app.s3Label.FontSize = 14;
            app.s3Label.FontWeight = 'bold';
            app.s3Label.Position = [62 83 25 22];
            app.s3Label.Text = 's3';

            % Create s4Label
            app.s4Label = uilabel(app.Panel_7);
            app.s4Label.HorizontalAlignment = 'center';
            app.s4Label.FontSize = 14;
            app.s4Label.FontWeight = 'bold';
            app.s4Label.Position = [62 30 25 22];
            app.s4Label.Text = 's4';

            % Create Label_52
            app.Label_52 = uilabel(app.Panel_7);
            app.Label_52.HorizontalAlignment = 'center';
            app.Label_52.FontSize = 14;
            app.Label_52.FontWeight = 'bold';
            app.Label_52.Position = [123 189 25 22];
            app.Label_52.Text = '=';

            % Create Label_53
            app.Label_53 = uilabel(app.Panel_7);
            app.Label_53.HorizontalAlignment = 'center';
            app.Label_53.FontSize = 14;
            app.Label_53.FontWeight = 'bold';
            app.Label_53.Position = [123 136 25 22];
            app.Label_53.Text = '=';

            % Create Label_54
            app.Label_54 = uilabel(app.Panel_7);
            app.Label_54.HorizontalAlignment = 'center';
            app.Label_54.FontSize = 14;
            app.Label_54.FontWeight = 'bold';
            app.Label_54.Position = [123 84 25 22];
            app.Label_54.Text = '=';

            % Create Label_55
            app.Label_55 = uilabel(app.Panel_7);
            app.Label_55.HorizontalAlignment = 'center';
            app.Label_55.FontSize = 14;
            app.Label_55.FontWeight = 'bold';
            app.Label_55.Position = [122 31 25 22];
            app.Label_55.Text = '=';

            % Create Panel_16
            app.Panel_16 = uipanel(app.Tab_3);
            app.Panel_16.ForegroundColor = [0.851 0.3255 0.098];
            app.Panel_16.Title = '闭环系统性能';
            app.Panel_16.BackgroundColor = [1 1 1];
            app.Panel_16.FontWeight = 'bold';
            app.Panel_16.FontSize = 14;
            app.Panel_16.Position = [394 96 357 491];

            % Create close_system_fig
            app.close_system_fig = uiaxes(app.Panel_16);
            app.close_system_fig.FontName = 'Times New Roman';
            app.close_system_fig.YGrid = 'on';
            app.close_system_fig.FontSize = 12;
            app.close_system_fig.Tag = 'fig1';
            app.close_system_fig.Position = [1 272 352 160];

            % Create Label_56
            app.Label_56 = uilabel(app.Panel_16);
            app.Label_56.HorizontalAlignment = 'center';
            app.Label_56.FontSize = 14;
            app.Label_56.FontWeight = 'bold';
            app.Label_56.Position = [120 439 117 22];
            app.Label_56.Text = '闭环系统极点分布';

            % Create close_s2_real
            app.close_s2_real = uieditfield(app.Panel_16, 'numeric');
            %app.close_s2_real.AllowEmpty = 'on';
            app.close_s2_real.Editable = 'off';
            app.close_s2_real.HorizontalAlignment = 'center';
            app.close_s2_real.Position = [171 132 55 22];
            app.close_s2_real.Value = 0;

            % Create close_s2_image
            app.close_s2_image = uieditfield(app.Panel_16, 'numeric');
            %app.close_s2_image.AllowEmpty = 'on';
            app.close_s2_image.Editable = 'off';
            app.close_s2_image.HorizontalAlignment = 'center';
            app.close_s2_image.Position = [246 132 55 22];
            app.close_s2_image.Value = 0;

            % Create Label_57
            app.Label_57 = uilabel(app.Panel_16);
            app.Label_57.FontName = 'Times New Roman';
            app.Label_57.FontSize = 14;
            app.Label_57.Position = [233 134 25 22];
            app.Label_57.Text = '-';

            % Create iLabel_17
            app.iLabel_17 = uilabel(app.Panel_16);
            app.iLabel_17.FontName = 'Times New Roman';
            app.iLabel_17.FontSize = 14;
            app.iLabel_17.FontAngle = 'italic';
            app.iLabel_17.Position = [306 134 11 22];
            app.iLabel_17.Text = 'i';

            % Create close_s1_real
            app.close_s1_real = uieditfield(app.Panel_16, 'numeric');
            %app.close_s1_real.AllowEmpty = 'on';
            app.close_s1_real.Editable = 'off';
            app.close_s1_real.HorizontalAlignment = 'center';
            app.close_s1_real.Position = [171 188 55 22];
            app.close_s1_real.Value = 0;

            % Create close_s1_image
            app.close_s1_image = uieditfield(app.Panel_16, 'numeric');
            %app.close_s1_image.AllowEmpty = 'on';
            app.close_s1_image.Editable = 'off';
            app.close_s1_image.HorizontalAlignment = 'center';
            app.close_s1_image.Position = [246 188 55 22];
            app.close_s1_image.Value = 0;

            % Create Label_58
            app.Label_58 = uilabel(app.Panel_16);
            app.Label_58.FontName = 'Times New Roman';
            app.Label_58.FontSize = 14;
            app.Label_58.Position = [232 187 10 22];
            app.Label_58.Text = '+';

            % Create iLabel_18
            app.iLabel_18 = uilabel(app.Panel_16);
            app.iLabel_18.FontName = 'Times New Roman';
            app.iLabel_18.FontSize = 14;
            app.iLabel_18.FontAngle = 'italic';
            app.iLabel_18.Position = [306 187 11 22];
            app.iLabel_18.Text = 'i';

            % Create close_s3_real
            app.close_s3_real = uieditfield(app.Panel_16, 'numeric');
            %app.close_s3_real.AllowEmpty = 'on';
            app.close_s3_real.Editable = 'off';
            app.close_s3_real.HorizontalAlignment = 'center';
            app.close_s3_real.Position = [171 81 55 22];
            app.close_s3_real.Value = 0;

            % Create close_s3_image
            app.close_s3_image = uieditfield(app.Panel_16, 'numeric');
            %app.close_s3_image.AllowEmpty = 'on';
            app.close_s3_image.Editable = 'off';
            app.close_s3_image.HorizontalAlignment = 'center';
            app.close_s3_image.Position = [246 81 55 22];
            app.close_s3_image.Value = 0;

            % Create Label_59
            app.Label_59 = uilabel(app.Panel_16);
            app.Label_59.FontName = 'Times New Roman';
            app.Label_59.FontSize = 14;
            app.Label_59.Position = [232 83 10 22];
            app.Label_59.Text = '+';

            % Create iLabel_19
            app.iLabel_19 = uilabel(app.Panel_16);
            app.iLabel_19.FontName = 'Times New Roman';
            app.iLabel_19.FontSize = 14;
            app.iLabel_19.FontAngle = 'italic';
            app.iLabel_19.Position = [306 83 11 22];
            app.iLabel_19.Text = 'i';

            % Create close_s4_real
            app.close_s4_real = uieditfield(app.Panel_16, 'numeric');
            %app.close_s4_real.AllowEmpty = 'on';
            app.close_s4_real.Editable = 'off';
            app.close_s4_real.HorizontalAlignment = 'center';
            app.close_s4_real.Position = [171 27 55 22];
            app.close_s4_real.Value = 0;

            % Create close_s4_image
            app.close_s4_image = uieditfield(app.Panel_16, 'numeric');
            %app.close_s4_image.AllowEmpty = 'on';
            app.close_s4_image.Editable = 'off';
            app.close_s4_image.HorizontalAlignment = 'center';
            app.close_s4_image.Position = [246 27 55 22];
            app.close_s4_image.Value = 0;

            % Create Label_60
            app.Label_60 = uilabel(app.Panel_16);
            app.Label_60.FontName = 'Times New Roman';
            app.Label_60.FontSize = 14;
            app.Label_60.Position = [233 29 25 22];
            app.Label_60.Text = '-';

            % Create iLabel_20
            app.iLabel_20 = uilabel(app.Panel_16);
            app.iLabel_20.FontName = 'Times New Roman';
            app.iLabel_20.FontSize = 14;
            app.iLabel_20.FontAngle = 'italic';
            app.iLabel_20.Position = [306 29 11 22];
            app.iLabel_20.Text = 'i';

            % Create Label_61
            app.Label_61 = uilabel(app.Panel_16);
            app.Label_61.HorizontalAlignment = 'center';
            app.Label_61.FontSize = 14;
            app.Label_61.FontWeight = 'bold';
            app.Label_61.Position = [126 231 103 22];
            app.Label_61.Text = '闭环系统极点值';

            % Create s1Label_2
            app.s1Label_2 = uilabel(app.Panel_16);
            app.s1Label_2.HorizontalAlignment = 'center';
            app.s1Label_2.FontSize = 14;
            app.s1Label_2.FontWeight = 'bold';
            app.s1Label_2.Position = [62 187 25 22];
            app.s1Label_2.Text = 's1';

            % Create s2Label_2
            app.s2Label_2 = uilabel(app.Panel_16);
            app.s2Label_2.HorizontalAlignment = 'center';
            app.s2Label_2.FontSize = 14;
            app.s2Label_2.FontWeight = 'bold';
            app.s2Label_2.Position = [62 134 25 22];
            app.s2Label_2.Text = 's2';

            % Create s3Label_2
            app.s3Label_2 = uilabel(app.Panel_16);
            app.s3Label_2.HorizontalAlignment = 'center';
            app.s3Label_2.FontSize = 14;
            app.s3Label_2.FontWeight = 'bold';
            app.s3Label_2.Position = [62 82 25 22];
            app.s3Label_2.Text = 's3';

            % Create s4Label_2
            app.s4Label_2 = uilabel(app.Panel_16);
            app.s4Label_2.HorizontalAlignment = 'center';
            app.s4Label_2.FontSize = 14;
            app.s4Label_2.FontWeight = 'bold';
            app.s4Label_2.Position = [62 29 25 22];
            app.s4Label_2.Text = 's4';

            % Create Label_62
            app.Label_62 = uilabel(app.Panel_16);
            app.Label_62.HorizontalAlignment = 'center';
            app.Label_62.FontSize = 14;
            app.Label_62.FontWeight = 'bold';
            app.Label_62.Position = [123 188 25 22];
            app.Label_62.Text = '=';

            % Create Label_63
            app.Label_63 = uilabel(app.Panel_16);
            app.Label_63.HorizontalAlignment = 'center';
            app.Label_63.FontSize = 14;
            app.Label_63.FontWeight = 'bold';
            app.Label_63.Position = [123 135 25 22];
            app.Label_63.Text = '=';

            % Create Label_64
            app.Label_64 = uilabel(app.Panel_16);
            app.Label_64.HorizontalAlignment = 'center';
            app.Label_64.FontSize = 14;
            app.Label_64.FontWeight = 'bold';
            app.Label_64.Position = [123 83 25 22];
            app.Label_64.Text = '=';

            % Create Label_65
            app.Label_65 = uilabel(app.Panel_16);
            app.Label_65.HorizontalAlignment = 'center';
            app.Label_65.FontSize = 14;
            app.Label_65.FontWeight = 'bold';
            app.Label_65.Position = [122 30 25 22];
            app.Label_65.Text = '=';

            % Create system_txt
            app.system_txt = uilabel(app.Tab_3);
            app.system_txt.HorizontalAlignment = 'center';
            app.system_txt.FontSize = 16;
            app.system_txt.FontWeight = 'bold';
            app.system_txt.Position = [226 62 320 22];
            app.system_txt.Text = '等待用户操作...';

            % Create export_system_result
            app.export_system_result = uibutton(app.Tab_3, 'push');
            app.export_system_result.ButtonPushedFcn = createCallbackFcn(app, @export_system_resultButtonPushed, true);
            app.export_system_result.FontSize = 16;
            app.export_system_result.Enable = 'off';
            app.export_system_result.Position = [321 11 129 39];
            app.export_system_result.Text = '导出图片结果';

            % Create Tab_6
            app.Tab_6 = uitab(app.TabGroup);
            app.Tab_6.Title = '状态观测结果1';
            app.Tab_6.BackgroundColor = [1 1 1];

            % Create Panel_14
            app.Panel_14 = uipanel(app.Tab_6);
            app.Panel_14.ForegroundColor = [0 0.4471 0.7412];
            app.Panel_14.Title = '观测结果';
            app.Panel_14.BackgroundColor = [1 1 1];
            app.Panel_14.FontWeight = 'bold';
            app.Panel_14.FontSize = 13;
            app.Panel_14.Position = [3 119 381 435];

            % Create obs_angle_fig
            app.obs_angle_fig = uiaxes(app.Panel_14);
            app.obs_angle_fig.FontName = 'Times New Roman';
            app.obs_angle_fig.YGrid = 'on';
            app.obs_angle_fig.FontSize = 12;
            app.obs_angle_fig.Tag = 'fig1';
            app.obs_angle_fig.Position = [4 218 371 160];

            % Create obs_position_fig
            app.obs_position_fig = uiaxes(app.Panel_14);
            app.obs_position_fig.FontName = 'Times New Roman';
            app.obs_position_fig.XLimitMethod = 'tight';
            app.obs_position_fig.YLimitMethod = 'tight';
            app.obs_position_fig.ZLimitMethod = 'tight';
            app.obs_position_fig.ClippingStyle = 'rectangle';
            app.obs_position_fig.YGrid = 'on';
            app.obs_position_fig.FontSize = 12;
            app.obs_position_fig.Tag = 'fig2';
            app.obs_position_fig.Position = [4 12 371 160];

            % Create Label_41
            app.Label_41 = uilabel(app.Panel_14);
            app.Label_41.HorizontalAlignment = 'center';
            app.Label_41.FontSize = 14;
            app.Label_41.FontWeight = 'bold';
            app.Label_41.Position = [142 182 89 22];
            app.Label_41.Text = '位置观测结果';

            % Create Label_42
            app.Label_42 = uilabel(app.Panel_14);
            app.Label_42.HorizontalAlignment = 'center';
            app.Label_42.FontSize = 14;
            app.Label_42.FontWeight = 'bold';
            app.Label_42.Position = [146 384 89 22];
            app.Label_42.Text = '角度观测结果';

            % Create Panel_15
            app.Panel_15 = uipanel(app.Tab_6);
            app.Panel_15.ForegroundColor = [0 0.4471 0.7412];
            app.Panel_15.Title = '观测误差';
            app.Panel_15.BackgroundColor = [1 1 1];
            app.Panel_15.FontWeight = 'bold';
            app.Panel_15.FontSize = 13;
            app.Panel_15.Position = [386 119 381 435];

            % Create obs_angle_err_fig
            app.obs_angle_err_fig = uiaxes(app.Panel_15);
            app.obs_angle_err_fig.FontName = 'Times New Roman';
            app.obs_angle_err_fig.YGrid = 'on';
            app.obs_angle_err_fig.FontSize = 12;
            app.obs_angle_err_fig.Tag = 'fig1';
            app.obs_angle_err_fig.Position = [4 218 371 160];

            % Create obs_position_err_fig
            app.obs_position_err_fig = uiaxes(app.Panel_15);
            app.obs_position_err_fig.FontName = 'Times New Roman';
            app.obs_position_err_fig.XLimitMethod = 'tight';
            app.obs_position_err_fig.YLimitMethod = 'tight';
            app.obs_position_err_fig.ZLimitMethod = 'tight';
            app.obs_position_err_fig.ClippingStyle = 'rectangle';
            app.obs_position_err_fig.YGrid = 'on';
            app.obs_position_err_fig.FontSize = 12;
            app.obs_position_err_fig.Tag = 'fig2';
            app.obs_position_err_fig.Position = [4 12 371 160];

            % Create Label_43
            app.Label_43 = uilabel(app.Panel_15);
            app.Label_43.HorizontalAlignment = 'center';
            app.Label_43.FontSize = 14;
            app.Label_43.FontWeight = 'bold';
            app.Label_43.Position = [143 182 89 22];
            app.Label_43.Text = '位置观测误差';

            % Create Label_44
            app.Label_44 = uilabel(app.Panel_15);
            app.Label_44.HorizontalAlignment = 'center';
            app.Label_44.FontSize = 14;
            app.Label_44.FontWeight = 'bold';
            app.Label_44.Position = [142 384 89 22];
            app.Label_44.Text = '角度观测误差';

            % Create export_observer_result_2
            app.export_observer_result_2 = uibutton(app.Tab_6, 'push');
            app.export_observer_result_2.ButtonPushedFcn = createCallbackFcn(app, @export_observer_result_2ButtonPushed, true);
            app.export_observer_result_2.FontSize = 16;
            app.export_observer_result_2.Enable = 'off';
            app.export_observer_result_2.Position = [312 19 129 39];
            app.export_observer_result_2.Text = '导出图片结果';

            % Create observer_txt_2
            app.observer_txt_2 = uilabel(app.Tab_6);
            app.observer_txt_2.HorizontalAlignment = 'center';
            app.observer_txt_2.FontSize = 16;
            app.observer_txt_2.FontWeight = 'bold';
            app.observer_txt_2.Position = [218 74 320 22];
            app.observer_txt_2.Text = '等待用户操作...';

            % Create Tab_5
            app.Tab_5 = uitab(app.TabGroup);
            app.Tab_5.Title = '状态观测结果2';
            app.Tab_5.BackgroundColor = [1 1 1];

            % Create Panel_12
            app.Panel_12 = uipanel(app.Tab_5);
            app.Panel_12.ForegroundColor = [0 0.4471 0.7412];
            app.Panel_12.Title = '观测结果';
            app.Panel_12.BackgroundColor = [1 1 1];
            app.Panel_12.FontWeight = 'bold';
            app.Panel_12.FontSize = 13;
            app.Panel_12.Position = [3 119 381 435];

            % Create obs_anglevel_fig
            app.obs_anglevel_fig = uiaxes(app.Panel_12);
            app.obs_anglevel_fig.FontName = 'Times New Roman';
            app.obs_anglevel_fig.YGrid = 'on';
            app.obs_anglevel_fig.FontSize = 12;
            app.obs_anglevel_fig.Tag = 'fig1';
            app.obs_anglevel_fig.Position = [5 223 371 160];

            % Create obs_vel_fig
            app.obs_vel_fig = uiaxes(app.Panel_12);
            app.obs_vel_fig.FontName = 'Times New Roman';
            app.obs_vel_fig.XLimitMethod = 'tight';
            app.obs_vel_fig.YLimitMethod = 'tight';
            app.obs_vel_fig.ZLimitMethod = 'tight';
            app.obs_vel_fig.ClippingStyle = 'rectangle';
            app.obs_vel_fig.YGrid = 'on';
            app.obs_vel_fig.FontSize = 12;
            app.obs_vel_fig.Tag = 'fig2';
            app.obs_vel_fig.Position = [5 22 371 160];

            % Create Label_37
            app.Label_37 = uilabel(app.Panel_12);
            app.Label_37.HorizontalAlignment = 'center';
            app.Label_37.FontSize = 14;
            app.Label_37.FontWeight = 'bold';
            app.Label_37.Position = [135 182 103 22];
            app.Label_37.Text = '线速度观测结果';

            % Create Label_38
            app.Label_38 = uilabel(app.Panel_12);
            app.Label_38.HorizontalAlignment = 'center';
            app.Label_38.FontSize = 14;
            app.Label_38.FontWeight = 'bold';
            app.Label_38.Position = [139 384 103 22];
            app.Label_38.Text = '角速度观测结果';

            % Create Panel_13
            app.Panel_13 = uipanel(app.Tab_5);
            app.Panel_13.ForegroundColor = [0 0.4471 0.7412];
            app.Panel_13.Title = '观测误差';
            app.Panel_13.BackgroundColor = [1 1 1];
            app.Panel_13.FontWeight = 'bold';
            app.Panel_13.FontSize = 13;
            app.Panel_13.Position = [386 119 381 435];

            % Create obs_anglevel_err_fig
            app.obs_anglevel_err_fig = uiaxes(app.Panel_13);
            app.obs_anglevel_err_fig.FontName = 'Times New Roman';
            app.obs_anglevel_err_fig.YGrid = 'on';
            app.obs_anglevel_err_fig.FontSize = 12;
            app.obs_anglevel_err_fig.Tag = 'fig1';
            app.obs_anglevel_err_fig.Position = [5 223 371 160];

            % Create obs_vel_err_fig
            app.obs_vel_err_fig = uiaxes(app.Panel_13);
            app.obs_vel_err_fig.FontName = 'Times New Roman';
            app.obs_vel_err_fig.XLimitMethod = 'tight';
            app.obs_vel_err_fig.YLimitMethod = 'tight';
            app.obs_vel_err_fig.ZLimitMethod = 'tight';
            app.obs_vel_err_fig.ClippingStyle = 'rectangle';
            app.obs_vel_err_fig.YGrid = 'on';
            app.obs_vel_err_fig.FontSize = 12;
            app.obs_vel_err_fig.Tag = 'fig2';
            app.obs_vel_err_fig.Position = [5 22 371 160];

            % Create Label_39
            app.Label_39 = uilabel(app.Panel_13);
            app.Label_39.HorizontalAlignment = 'center';
            app.Label_39.FontSize = 14;
            app.Label_39.FontWeight = 'bold';
            app.Label_39.Position = [134 184 103 22];
            app.Label_39.Text = '线速度观测误差';

            % Create Label_40
            app.Label_40 = uilabel(app.Panel_13);
            app.Label_40.HorizontalAlignment = 'center';
            app.Label_40.FontSize = 14;
            app.Label_40.FontWeight = 'bold';
            app.Label_40.Position = [135 384 103 22];
            app.Label_40.Text = '角速度观测误差';

            % Create export_observer_result
            app.export_observer_result = uibutton(app.Tab_5, 'push');
            app.export_observer_result.ButtonPushedFcn = createCallbackFcn(app, @export_observer_resultButtonPushed, true);
            app.export_observer_result.FontSize = 16;
            app.export_observer_result.Enable = 'off';
            app.export_observer_result.Position = [312 19 129 39];
            app.export_observer_result.Text = '导出图片结果';

            % Create observer_txt
            app.observer_txt = uilabel(app.Tab_5);
            app.observer_txt.HorizontalAlignment = 'center';
            app.observer_txt.FontSize = 16;
            app.observer_txt.FontWeight = 'bold';
            app.observer_txt.Position = [218 74 320 22];
            app.observer_txt.Text = '等待用户操作...';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = pedulum_gui

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end