.class public Lcom/google/android/gms/common/zze;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field public static final b:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static c:Z

.field public static d:Z

.field static e:Z

.field static final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/common/zze;->b()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/zze;->b:I

    sput-boolean v1, Lcom/google/android/gms/common/zze;->c:Z

    sput-boolean v1, Lcom/google/android/gms/common/zze;->d:Z

    sput-boolean v1, Lcom/google/android/gms/common/zze;->e:Z

    sput-boolean v1, Lcom/google/android/gms/common/zze;->a:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zze;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zze;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/ConnectionResult;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/common/zze;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzy;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    sget v1, Lcom/google/android/gms/common/zze;->b:I

    if-eq v0, v1, :cond_8

    new-instance v1, Ljava/lang/IllegalStateException;

    sget v2, Lcom/google/android/gms/common/zze;->b:I

    const-string/jumbo v3, "com.google.android.gms.version"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit16 v5, v5, 0x122

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " but found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".  You must have the following declaration within the <application> element:     <meta-data android:name=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->a()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/zzx;->a(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/google/android/gms/common/util/zzd;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return v2

    :cond_12
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->g()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v2, v1

    goto :goto_11

    :cond_40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x2000

    :try_start_46
    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v3, :cond_4f

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_11

    :cond_4f
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_5c

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->h(Landroid/content/Context;)Z
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_56} :catch_5e

    move-result v0

    if-nez v0, :cond_5c

    move v0, v1

    :goto_5a
    move v2, v0

    goto :goto_11

    :cond_5c
    move v0, v2

    goto :goto_5a

    :catch_5e
    move-exception v0

    goto :goto_11
.end method

.method private static b()I
    .registers 1

    const v0, 0x96b608

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_55

    :goto_11
    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->a(Landroid/content/Context;)V

    :cond_21
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzi;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_60

    move v4, v1

    :goto_28
    const/4 v3, 0x0

    if-eqz v4, :cond_34

    :try_start_2b
    const-string/jumbo v3, "com.android.vending"

    const/16 v6, 0x2040

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_33} :catch_62

    move-result-object v3

    :cond_34
    :try_start_34
    const-string/jumbo v6, "com.google.android.gms"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_3c} :catch_6d

    move-result-object v6

    invoke-static {p0}, Lcom/google/android/gms/common/zzf;->a(Landroid/content/Context;)Lcom/google/android/gms/common/zzf;

    move-result-object v7

    if-eqz v4, :cond_8d

    sget-object v4, Lcom/google/android/gms/common/zzd$zzd;->a:[Lcom/google/android/gms/common/zzd$zza;

    invoke-virtual {v7, v3, v4}, Lcom/google/android/gms/common/zzf;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v3

    if-nez v3, :cond_79

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play Store signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return v0

    :catch_55
    move-exception v3

    const-string/jumbo v3, "GooglePlayServicesUtil"

    const-string/jumbo v4, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_60
    move v4, v2

    goto :goto_28

    :catch_62
    move-exception v1

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play Store is missing."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :catch_6d
    move-exception v0

    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services is missing."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_54

    :cond_79
    new-array v4, v1, [Lcom/google/android/gms/common/zzd$zza;

    aput-object v3, v4, v2

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/common/zzf;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v3

    if-nez v3, :cond_9f

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_8d
    sget-object v3, Lcom/google/android/gms/common/zzd$zzd;->a:[Lcom/google/android/gms/common/zzd$zza;

    invoke-virtual {v7, v6, v3}, Lcom/google/android/gms/common/zzf;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v3

    if-nez v3, :cond_9f

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_9f
    sget v0, Lcom/google/android/gms/common/zze;->b:I

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzl;->a(I)I

    move-result v0

    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Lcom/google/android/gms/common/util/zzl;->a(I)I

    move-result v3

    if-ge v3, v0, :cond_db

    const-string/jumbo v0, "GooglePlayServicesUtil"

    sget v1, Lcom/google/android/gms/common/zze;->b:I

    iget v2, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Google Play services out of date.  Requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " but found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    goto/16 :goto_54

    :cond_db
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_e7

    :try_start_df
    const-string/jumbo v0, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_df .. :try_end_e6} :catch_ee

    move-result-object v0

    :cond_e7
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_fb

    const/4 v0, 0x3

    goto/16 :goto_54

    :catch_ee
    move-exception v0

    const-string/jumbo v2, "GooglePlayServicesUtil"

    const-string/jumbo v3, "Google Play services missing when getting application info."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto/16 :goto_54

    :cond_fb
    move v0, v2

    goto/16 :goto_54
.end method

.method public static b(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;I)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p1, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    if-ne p1, v0, :cond_10

    const-string/jumbo v0, "com.google.android.gms"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/zze;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->i(Landroid/content/Context;)V

    sget-boolean v0, Lcom/google/android/gms/common/zze;->e:Z

    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/common/zze;->a()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static e(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/zze;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    :try_start_a
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_9

    const/16 v1, 0x28c4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_9

    :catch_1b
    move-exception v0

    goto :goto_9
.end method

.method public static f(Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static g(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    :try_start_0
    const-string/jumbo v0, "com.google.android.gms"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->d()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "restricted_profile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private static i(Landroid/content/Context;)V
    .registers 2

    sget-boolean v0, Lcom/google/android/gms/common/zze;->a:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/common/zze;->j(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method private static j(Landroid/content/Context;)V
    .registers 8

    const/4 v6, 0x1

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/zzsz;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsy;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzsy;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-static {p0}, Lcom/google/android/gms/common/zzf;->a(Landroid/content/Context;)Lcom/google/android/gms/common/zzf;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/common/zzd$zza;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/common/zzd$zzd;->a:[Lcom/google/android/gms/common/zzd$zza;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/zzf;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/common/zze;->e:Z
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_28} :catch_2f
    .catchall {:try_start_1 .. :try_end_28} :catchall_3c

    :goto_28
    sput-boolean v6, Lcom/google/android/gms/common/zze;->a:Z

    :goto_2a
    return-void

    :cond_2b
    const/4 v0, 0x0

    :try_start_2c
    sput-boolean v0, Lcom/google/android/gms/common/zze;->e:Z
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_2e} :catch_2f
    .catchall {:try_start_2c .. :try_end_2e} :catchall_3c

    goto :goto_28

    :catch_2f
    move-exception v0

    :try_start_30
    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Cannot find Google Play services package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3c

    sput-boolean v6, Lcom/google/android/gms/common/zze;->a:Z

    goto :goto_2a

    :catchall_3c
    move-exception v0

    sput-boolean v6, Lcom/google/android/gms/common/zze;->a:Z

    throw v0
.end method