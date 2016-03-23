.class public Lcom/google/android/gms/internal/zzmr;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmr$zza;,
        Lcom/google/android/gms/internal/zzmr$zzb;
    }
.end annotation


# static fields
.field private static final zzagU:Lcom/google/android/gms/common/GoogleApiAvailability;


# instance fields
.field private mStarted:Z

.field private zzagV:Z

.field private zzagW:I

.field private zzagX:Lcom/google/android/gms/common/ConnectionResult;

.field private final zzagY:Landroid/os/Handler;

.field private zzagZ:Lcom/google/android/gms/internal/zzmk;

.field private final zzaha:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzmr$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzmr;->zzagU:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagW:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagY:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmr;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzmr;->zzagW:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmr;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmr;->zzagX:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmr;Lcom/google/android/gms/internal/zzmk;)Lcom/google/android/gms/internal/zzmk;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmr;->zzagZ:Lcom/google/android/gms/internal/zzmk;

    return-object p1
.end method

.method public static zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzmr;
    .registers 4

    const-string/jumbo v0, "Must be called from main thread of process"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcx(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    :try_start_a
    const-string/jumbo v1, "GmsSupportLifecycleFrag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmr;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_13} :catch_1d

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmr;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    const/4 v0, 0x0

    :cond_1c
    return-object v0

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Fragment with tag GmsSupportLifecycleFrag is not a SupportLifecycleFragment"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zza(ILcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    const-string/jumbo v0, "GmsSupportLifecycleFrag"

    const-string/jumbo v1, "Unresolved error while connecting client. Stopping auto-manage."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmr$zza;

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmr;->zzbE(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmr$zza;->zzahd:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    if-eqz v0, :cond_1d

    invoke-interface {v0, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmr;->zzpA()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmr;ILcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzmr;->zza(ILcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmr;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmr;->mStarted:Z

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmr;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmr;->zzagV:Z

    return p1
.end method

.method public static zzb(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzmr;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/internal/zzmr;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzmr;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/zzmr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmr;-><init>()V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string/jumbo v3, "GmsSupportLifecycleFrag"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_20
    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzmr;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagV:Z

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzmr;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmr;->zzpA()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzmr;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagY:Landroid/os/Handler;

    return-object v0
.end method

.method private zzpA()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagV:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzmr;->zzagW:I

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmr;->zzagX:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmr;->zzagZ:Lcom/google/android/gms/internal/zzmk;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmr;->zzagZ:Lcom/google/android/gms/internal/zzmk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmk;->unregister()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmr;->zzagZ:Lcom/google/android/gms/internal/zzmk;

    :cond_14
    move v1, v0

    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmr$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmr$zza;->zzahc:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_2e
    return-void
.end method

.method static synthetic zzpB()Lcom/google/android/gms/common/GoogleApiAvailability;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzmr;->zzagU:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmr$zza;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzmr$zza;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_1c
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_32

    :cond_5
    :goto_5
    move v0, v1

    :cond_6
    :goto_6
    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmr;->zzpA()V

    :goto_b
    return-void

    :pswitch_c
    sget-object v2, Lcom/google/android/gms/internal/zzmr;->zzagU:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_6

    :pswitch_19
    const/4 v2, -0x1

    if-eq p2, v2, :cond_6

    if-nez p2, :cond_5

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagX:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_5

    :cond_29
    iget v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagW:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmr;->zzagX:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzmr;->zza(ILcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_19
        :pswitch_c
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagW:I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzmr;->zza(ILcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_34

    const-string/jumbo v0, "resolving_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagV:Z

    const-string/jumbo v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagW:I

    iget v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagW:I

    if-ltz v0, :cond_34

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string/jumbo v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzmr;->zzagX:Lcom/google/android/gms/common/ConnectionResult;

    :cond_34
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "resolving_error"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzmr;->zzagV:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagW:I

    if-ltz v0, :cond_2f

    const-string/jumbo v0, "failed_client_id"

    iget v1, p0, Lcom/google/android/gms/internal/zzmr;->zzagW:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "failed_status"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmr;->zzagX:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "failed_resolution"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmr;->zzagX:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2f
    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmr;->mStarted:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagV:Z

    if-nez v0, :cond_25

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmr$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmr$zza;->zzahc:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_25
    return-void
.end method

.method public onStop()V
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmr;->mStarted:Z

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmr$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmr$zza;->zzahc:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_20
    return-void
.end method

.method public zza(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 7

    const-string/jumbo v0, "GoogleApiClient instance cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_3c

    const/4 v0, 0x1

    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Already managing a GoogleApiClient with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmr$zza;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzmr$zza;-><init>(Lcom/google/android/gms/internal/zzmr;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmr;->mStarted:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmr;->zzagV:Z

    if-nez v0, :cond_3b

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_3b
    return-void

    :cond_3c
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public zzbE(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmr$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmr;->zzaha:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmr$zza;->zzpC()V

    :cond_12
    return-void
.end method
